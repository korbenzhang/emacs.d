;;----------------------------------------------------------------------------
;; Emacs Config File
;; Author: Korben Zhang and Others
;; Copy from many others configs.
;;----------------------------------------------------------------------------

;; emacs init essential

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(package-initialize)

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
