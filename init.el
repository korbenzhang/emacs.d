;;----------------------------------------------------------------------------
;; Emacs Config File
;; Author: Korben Zhang and Others
;; Copy from many others configs.
;;----------------------------------------------------------------------------

;;(setq emacs-load-start-time (current-time))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Load settings
(load "~/.emacs.d/ext/settings.el")

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
(require 'init-spelling) ;; flyspell should initialized after init-spelling.el
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
;;(require 'init-crontab)
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
;;(require 'init-zencoding-mode)
;;(require 'init-cc-mode)
(require 'init-gud)
;;(require 'init-linum-mode)
;; (require 'init-gist)
;;(require 'init-moz)
;;(require 'init-gtags)
(require 'init-evil)				;; use evil mode (vi key binding)
(require 'init-sh)
;;(require 'init-ctags)
(require 'init-ace-jump-mode)
;;(require 'init-bbdb) ;; mail
;;(require 'init-gnus) ;; subscript
;;(require 'init-lua-mode)
(require 'init-workgroups2)
(require 'init-term-mode)
(require 'init-web-mode)
;;(require 'init-slime)
(require 'init-clipboard)
(require 'init-company)
;;(require 'init-chinese-pyim)		;; cannot be idle-required
(require 'init-keyfreq)				;; need statistics of keyfreq asap
;;(require 'init-httpd)
(require 'init-misc)				;; misc has some crucial tools I need immediately
;;(require 'init-emacs-w3m)
;;(require 'init-html)
;;(require 'init-haml)
;;(require 'init-sql)
(require 'direx)
(require 'quickrun)

;;(require 'move-text)

;; Go Lang
(load "~/.emacs.d/ext/go.el")

;; Allow access from emacsclient
;; In windows should chown server to current user.
(require 'server)
(unless (server-running-p)(server-start))

(idle-require-mode 1) ;; starts loading

;; Locales (setting them earlier in this file doesn't work in X)
(require 'init-locales)

;;(load "~/.emacs.d/ext/ext.el")
;;(load "~/.emacs.d/ext/tabbar.el")
(load-file "~/.emacs.d/ext/key.el")
;;(load-file "~/.emacs.d/ext/keyring.el")
;;(load-file "~/.emacs.d/ext/window_numbering.el")
(load "~/.emacs.d/ext/theme.el")

;; personal setup, outside of git.
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))

