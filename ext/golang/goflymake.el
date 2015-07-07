
;; see http://blog.csdn.net/delphinew/article/details/6086051

(require 'go-mode-load)
(require 'flymake)
(autoload 'flymake-find-file-hook "flymake" "" t)
(add-hook 'find-file-hook 'flymake-find-file-hook)
(setq flymake-gui-warnings-enabled nil)
(setq flymake-log-level 0)
(defun flymake-golang-init ()
  (defadvice flymake-save-buffer-in-file ;;;;fix for my goscript usage
			 (around flymake-save-buffer-in-file-golang-fix
					 (file-name)
					 activate)
			 (make-directory (file-name-directory file-name) 1)
			 (save-excursion
			   (goto-char 0)
			   (when (looking-at "^#!/.*goscript.*")
				 (progn (forward-line 1) (forward-char -1)))
			   (write-region (point) (point-max) file-name nil 566))
			 (flymake-log 3 "saved buffer %s in file %s" (buffer-name) file-name))
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
					  'flymake-create-temp-inplace))
		 (local-file (file-relative-name
					   temp-file
					   (file-name-directory buffer-file-name))))
	;; edit this if you use `8g'/`6g' other than my `cg'
	;; #!/bin/bash
	;; 6g $*
	;; exit 0
	(list "cg" (list "-o /dev/null" local-file))))
(setq flymake-allowed-file-name-masks
	  (cons '(".+//.go$"
			  flymake-golang-init
			  flymake-simple-cleanup
			  flymake-get-real-file-name)
			flymake-allowed-file-name-masks))
(defun flymake-display-current-error ()
  "Display errors/warnings under cursor."
  (interactive)
  (let ((ovs (overlays-in (point) (1+ (point)))))
	(catch 'found
		   (dolist (ov ovs)
			 (when (flymake-overlay-p ov)
			   (message (overlay-get ov 'help-echo))
			   (throw 'found t))))))
(global-set-key (kbd "C-c f") 'flymake-display-current-error)
(global-set-key (kbd "C-c m") 'flymake-mode)
