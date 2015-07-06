;; Copy

(defun copy-line (&optional arg)
 "Save current line into Kill-Ring without mark the line"
  (interactive "P")
   (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
         (copy-region-as-kill beg end))
         )


(defun copy-word (&optional arg)
 "Copy words at point"
  (interactive "P")
   (let ((beg (progn (if (looking-back "[a-zA-Z0-9]" 1) (backward-word 1)) (point)))
        (end (progn (forward-word arg) (point))))
         (copy-region-as-kill beg end))
         )


(defun copy-paragraph (&optional arg)
 "Copy paragraphes at point"
  (interactive "P")
   (let ((beg (progn (backward-paragraph 1) (point)))
        (end (progn (forward-paragraph arg) (point))))
         (copy-region-as-kill beg end))
         ))