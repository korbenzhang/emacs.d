;; author Korben Zhang
;; 

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
;;(require 'init-spelling)
;;(require 'init-xterm)
;;(require 'init-gui-frames)
;;(require 'init-ido)
(require 'init-dired)
;;(require 'init-uniquify)
;;(require 'init-ibuffer)
;;(require 'init-flymake)
;;(require 'init-smex)
;;(require 'init-helm)
;;(require 'init-hippie-expand)
;;(require 'init-windows)
;;(require 'init-sessions)
;;(require 'init-git)
;;(require 'init-crontab)
(require 'init-markdown)
;;(require 'init-erlang)
;;(require 'init-javascript)
(require 'init-org)
;;(require 'init-org-mime)
;;(require 'init-css)
;;(require 'init-python-mode)
;;(require 'init-haskell)
;;(require 'init-ruby-mode)
;;(require 'init-lisp)
;;(require 'init-elisp)
;;(require 'init-yasnippet)
;; Use bookmark instead
;;(require 'init-zencoding-mode)
;;(require 'init-cc-mode)
;;(require 'init-gud)
;;(require 'init-linum-mode)
;; (require 'init-gist)
;;(require 'init-moz)
;;(require 'init-gtags)
;; use evil mode (vi key binding)
;;(require 'init-evil)
;;(require 'init-sh)
;;(require 'init-ctags)
;;(require 'init-ace-jump-mode)
;;(require 'init-bbdb)
;;(require 'init-gnus)
;;(require 'init-lua-mode)
;;(require 'init-workgroups2)
;;(require 'init-term-mode)
;;(require 'init-web-mode)
;;(require 'init-slime)
;;(require 'init-clipboard)
;;(require 'init-company)
;;(require 'init-chinese-pyim) ;; cannot be idle-required
;; need statistics of keyfreq asap
;;(require 'init-keyfreq)
;;(require 'init-httpd)

;; projectile costs 7% startup time

;; misc has some crucial tools I need immediately
;;(require 'init-misc)
;;(require 'init-color-theme)
;;(require 'init-emacs-w3m)

;;(require 'cl-lib)
;;(require 'init-xterm)
;;(require 'init-auto-complete)
;;(require 'init-git)
;;(require 'init-github)
;;(require 'init-compile)
;;(require 'init-textile)
;;(require 'init-markdown)
;;(require 'init-org)
;;(require 'init-nxml)
;;(require 'init-html)
;;(require 'init-css)
;;(require 'init-haml)
;;(require 'init-sql)

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
;;(require 'server)
;;(unless (server-running-p)
;;  (server-start))

(setq inhibit-startup-message nil)

(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;(setq frame-title-format "%b %I")

(auto-image-file-mode t) 
;;让Emacs可以直接打开、显示图片

(fset 'yes-or-no-p 'y-or-n-p) 
;;以Y/N代表yes/no

(setq auto-save-default nil) 
;;不生成名为#filename#的临时文件

(setq x-select-enable-clipboard t) 
;;支持和外部程序的拷贝

(global-font-lock-mode t) 
;;打开语法高亮

;;(set-language-environment 'UTF-8)
;;(set-locale-environment "UTF-8")
;;(set-default-font "Consolas 16")

(menu-bar-mode -1)
(tool-bar-mode -1)
(icomplete-mode 1)
(scroll-bar-mode -1)

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t) 

(fset 'yes-or-no-p 'y-or-n-p) 
(auto-compression-mode 1)   

(show-paren-mode 1)
(setq visible-bell -1)

(setq inhibit-startup-message t)   
(setq gnus-inhibit-startup-message t)   

(setq x-select-enable-clipboard t)  



(idle-require-mode 1) ;; starts loading

;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
(require 'init-locales)

;; my personal setup, other major-mode specific setup need it.
;; It's dependent on init-site-lisp.el
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))


;; EOF

