;; =====================================
;; Emacs Config File
;; author Korben Zhang
;; ======================================

(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )
(setq *no-memory* (cond
                   (*is-a-mac*
                    (< (string-to-number (nth 1 (split-string (shell-command-to-string "sysctl hw.physmem")))) 4000000000))
                   (*linux* nil)
                   (t nil)))

;;----------------------------------------------------------------------------
;; Less GC, more memory
;;----------------------------------------------------------------------------
;; By default Emacs will initiate GC every 0.76 MB allocated
;; (gc-cons-threshold == 800000).
;; we increase this to 512MB
;; @see http://www.gnu.org/software/emacs/manual/html_node/elisp/Garbage-Collection.html
(setq-default gc-cons-threshold (* 1024 1024 512)
              gc-cons-percentage 0.5)

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(require 'init-modeline)
(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'idle-require)
(require 'init-elpa)
(require 'init-exec-path) ;; Set up $PATH
(require 'init-frame-hooks)
;; any file use flyspell should be initialized after init-spelling.el
;; actually, I don't know which major-mode use flyspell.

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
;;(require 'init-bbdb)
(require 'init-gnus)
;;(require 'init-lua-mode)
;;(require 'init-workgroups2)
(require 'init-term-mode)
(require 'init-web-mode)
(require 'init-slime)
(require 'init-clipboard)
(require 'init-company)
(require 'init-chinese-pyim) ;; cannot be idle-required
;; need statistics of keyfreq asap
(require 'init-keyfreq)
;;(require 'init-httpd)

;; misc has some crucial tools I need immediately
(require 'init-misc)
(require 'init-color-theme)
;;(require 'init-emacs-w3m)

;;(require 'init-html)
;;(require 'init-haml)
;;(require 'init-sql)

;; GO
(require 'go-mode-autoloads)
(load "~/.emacs.d/go.el")

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))


(idle-require-mode 1) ;; starts loading

;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
(require 'init-locales)

;; Load Settings
(load "~/.emacs.d/settings.el")

;; my personal setup, other major-mode specific setup need it.
;; It's dependent on init-site-lisp.el
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))

;; EOF
