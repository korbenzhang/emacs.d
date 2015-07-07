
;; Use yasnippet to copy current line.

(defun yasnippet-current-line ();; C-c TAB
  (interactive)
  (let ((current-line (string-trim-right (thing-at-point 'line t))))
    (end-of-line)
    (newline-and-indent)
    (yas-expand-snippet (yasnippet-string-to-template (string-trim current-line)))))

;; to temp template
(defun yasnippet-string-to-template (string)
  (let ((count 1))
    (labels ((rep (text)
                  (let ((replace (format "${%d:%s}" count text)))
                    (incf count)
                    replace)))
      (replace-regexp-in-string "[a-zA-Z0-9]+" #'rep string))))

(global-set-key (kbd "C-c TAB") 'yasnippet-current-line)