;;----------------------------------------------------------------------------
;; Emacs Settings
;;----------------------------------------------------------------------------

(setq default-directory "~/")

(load "~/.emacs.d/ext/package.el")

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
                   (< (string-to-number (nth 1 (split-string
                   (shell-command-to-string "sysctl hw.physmem")))) 4000000000))
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


;;; Tab and Indent
;;----------------------------------------------------------------------------
;;tab宽度为4
(setq-default indent-tabs-mode  nil)
(setq tab-width 4 c-basic-offset 4)
;;(setq tab-width 4 indent-tabs-mode nil)

;;; not show start messages.
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;;; pair () etc.
(show-paren-mode t)
;;(setq show-paren-style 'parentheses)
(setq show-paren-style 'parenthesis)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处

(mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线

(setq frame-title-format "%b %I")

;;让Emacs可以直接打开、显示图片
(auto-image-file-mode t)

;;以Y/N代表yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;不生成名为#filename#的临时文件
(setq auto-save-default nil)

;;支持和外部程序的拷贝
(setq x-select-enable-clipboard t)

(setq-default kill-whole-line t)
;; 在行首 C-k 时，同时删除该行

;;打开语法高亮
(global-font-lock-mode t)

;; highlight selection.
(transient-mark-mode t)

;; Encodings
;;----------------------------------------------------------------------------
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")

;;invalid coding system UTF-8
;;(setq default-buffer-file-coding-system 'utf-8)

(setq transient-mark-mode nil)

;; Show line number
;;(require 'linum)

;;(setq make-backup-files nil)
;; 设定不产生备份文件

;;(setq auto-save-mode nil)
;;自动保存模式

(setq-default make-backup-files nil)
;; 不生成临时文件

;;(display-time-mode 1)
;;(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)

(auto-compression-mode 1)

(setq visible-bell t)

;; blink
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;; end of line
;;(setq track-eol t)

;;; dired recursive-edit
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

