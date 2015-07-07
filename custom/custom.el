;; Custom Emacs Conf Reference
;; ==========================

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

(require 'init-color-theme)

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
;;(require 'init-evil)

(require 'init-sh)
(require 'init-ctags)
(require 'init-ace-jump-mode)
(require 'init-bbdb)
(require 'init-gnus)
(require 'init-lua-mode)
;;(require 'init-workgroups2)
(require 'init-term-mode)
(require 'init-web-mode)
(require 'init-slime)
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

;; Go Lang
(require 'go-mode-autoloads)
(load "~/.emacs.d/go.el")

(idle-require-mode 1) ;; starts loading

;; Locales (setting them earlier in this file doesn't work in X)
(require 'init-locales)

;;(load "~/.emacs.d/ext.el")
