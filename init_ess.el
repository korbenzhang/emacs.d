;;----------------------------------------------------------------------------
;; Emacs Config File
;; Author: Korben Zhang and Others
;; Copy from many others configs.
;; See https://github.com/
;;----------------------------------------------------------------------------

;;(setq emacs-load-start-time (current-time))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'init-settings) ;; ~/.emacs.d/lisp/init-settings.el
(require 'init-modeline)
(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
(require 'idle-require)
(require 'init-elpa)
(require 'init-exec-path) ;; Set up $PATH
;;(require 'init-frame-hooks)

(require 'init-evil)				;; use evil mode (vi key binding)
(require 'init-dired)
(require 'init-helm)
(require 'init-org)
;;(require 'direx)
(require 'init-golang)
;;(require 'init-spelling) ;; flyspell should initialized after init-spelling.el
(require 'init-xterm)
;;(require 'init-gui-frames)
(require 'init-ido)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-flymake)
(require 'init-smex)
(require 'init-hippie-expand)
;;(require 'init-windows)
(require 'init-sessions)
;;(require 'init-git)
;;(require 'init-crontab)
;;(require 'init-markdown)
;;(require 'init-erlang)
;;(require 'init-javascript)
;;(require 'init-org-mime)
(require 'init-css)
;;(require 'init-python-mode)
;;(require 'init-haskell)
;;(require 'init-ruby-mode)
(require 'init-lisp)
(require 'init-elisp)
(require 'init-yasnippet)
(require 'init-zencoding-mode)
;;(require 'init-cc-mode)
;;(require 'init-gud)
;;(require 'init-linum-mode)
;; (require 'init-gist)
;;(require 'init-moz)
;;(require 'init-gtags)
;;(require 'init-sh)
;;(require 'init-ctags)
;;(require 'init-ace-jump-mode)
;;(require 'init-bbdb) ;; mail
;;(require 'init-gnus) ;; subscript
;;(require 'init-lua-mode)
;;(require 'init-workgroups2)
;;(require 'init-term-mode)
;;(require 'init-web-mode)
;;(require 'init-slime)
;;(require 'init-clipboard)
;;(require 'init-company)
;;(require 'init-chinese-pyim)		;; cannot be idle-required
;;(require 'init-keyfreq)				;; need statistics of keyfreq asap
;;(require 'init-httpd)
;;(require 'init-misc)				;; misc has some crucial tools I need immediately
;;(require 'init-emacs-w3m)
;;(require 'init-html)
;;(require 'init-haml)
;;(require 'init-sql)
;;(require 'quickrun)
;;(require 'move-text)
;;(require 'init-server)        ;; ~/.emacs.d/lisp/init-server.el
(idle-require-mode 1)         ;; starts loading
;; Locales (setting them earlier in this file doesn't work in X)
;;(require 'init-locales)       ;; ~/.emacs.d/lisp/init-locales.el
;;(require 'init-ext)           ;; ~/.emacs.d/lisp/init-ext.el
;;(require 'init-custom-theme)  ;; ~/.emacs.d/lisp/init-custom-theme.el
;;(require 'init-custom)        ;; ~/.emacs.d/lisp/init-custom.el

