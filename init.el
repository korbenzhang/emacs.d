;;----------------------------------------------------------------------------
;; Emacs Config File
;; Author: Korben Zhang and Others
;; Copy from many others configs.
;;----------------------------------------------------------------------------

;;(setq emacs-load-start-time (current-time))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Load settings
(load "~/.emacs.d/settings.el")

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-modeline)
(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el

(require 'idle-require)
(require 'init-elpa)
(require 'init-exec-path) ;; Set up $PATH
(require 'init-frame-hooks)

;; any file use flyspell should be initialized after init-spelling.el
(require 'init-spelling)
(require 'init-xterm)
(require 'init-gui-frames)
(require 'init-ido)
(require 'init-dired)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-flymake)
(require 'init-smex)
(require 'init-helm)
(require 'init-hippie-expand)
(require 'init-windows)
(require 'init-sessions)
;;(require 'init-git)
(require 'init-crontab)
(require 'init-markdown)
;;(require 'init-erlang)
(require 'init-javascript)
(require 'init-org)
(require 'init-org-mime)
(require 'init-css)
;;(require 'init-python-mode)
;;(require 'init-haskell)
;;(require 'init-ruby-mode)
(require 'init-lisp)
(require 'init-elisp)
(require 'init-yasnippet)
;; Use bookmark instead
(require 'init-zencoding-mode)
;;(require 'init-cc-mode)
;;(require 'init-gud)
;;(require 'init-linum-mode)
;; (require 'init-gist)
;;(require 'init-moz)
(require 'init-gtags)

;; use evil mode (vi key binding)
(require 'init-evil)

(require 'init-sh)
(require 'init-ctags)
(require 'init-ace-jump-mode)
(require 'init-bbdb)
(require 'init-gnus)
;;(require 'init-lua-mode)
;;(require 'init-workgroups2)
(require 'init-term-mode)
(require 'init-web-mode)
;;(require 'init-slime)
(require 'init-clipboard)
(require 'init-company)
;;(require 'init-chinese-pyim) ;; cannot be idle-required

;; need statistics of keyfreq asap
(require 'init-keyfreq)
;;(require 'init-httpd)

;; misc has some crucial tools I need immediately
(require 'init-misc)

;;(require 'init-emacs-w3m)

;;(require 'init-html)
;;(require 'init-haml)
;;(require 'init-sql)

;;(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'window-numbering)
(window-numbering-mode 1)

(require 'quickrun)

(require 'browse-kill-ring)
(global-set-key [(control c) (k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

(require 'swbuff)

(setq swbuff-exclude-buffer-regexps
     '("^ " "\\*.*\\*"))

(setq swbuff-status-window-layout 'scroll)
(setq swbuff-clear-delay 1)
(setq swbuff-separator "|")
(setq swbuff-window-min-text-height 1)

;(global-set-key (kbd "") 'swbuff-switch-to-previous-buffer)
;(global-set-key (kbd "") 'swbuff-switch-to-next-buffer)

(require 'move-text)

;; Go Lang
(require 'go-mode-autoloads)
(load "~/.emacs.d/go.el")

;; Allow access from emacsclient
(require 'server)
(unless (server-running-p)(server-start))

(idle-require-mode 1) ;; starts loading

;; Locales (setting them earlier in this file doesn't work in X)
(require 'init-locales)

;;(load "~/.emacs.d/ext.el")
;;(load "~/.emacs.d/plugin.d/tabbar.el")

;; personal setup
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))

;; Auto Save
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(safe-local-variable-values (quote ((no-byte-compile t))))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "apple" :slant normal :weight normal :height 131 :width normal))))
 '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold))) t))
