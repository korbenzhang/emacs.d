;;----------------------------------------------------------------------------
;; Emacs Config File
;; Author: Korben Zhang and Others
;; Copy from many others configs.
;;----------------------------------------------------------------------------

;; emacs init essential
(load "~/.emacs.d/init_ess.el")

;; emacs init full
;;(load "~/.emacs.d/init_full.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((no-byte-compile t))))
 '(show-paren-mode t)
 '(transient-mark-mode nil))
