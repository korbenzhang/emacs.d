;; Emacs Settings
;; -------------------------

(setq inhibit-startup-message nil)

(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;(setq frame-title-format "%b %I")

;;让Emacs可以直接打开、显示图片
(auto-image-file-mode t)

;;以Y/N代表yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;不生成名为#filename#的临时文件
(setq auto-save-default nil)

;;支持和外部程序的拷贝
(setq x-select-enable-clipboard t)

;;打开语法高亮
(global-font-lock-mode t)

(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
;;(set-default-font "Consolas 16")


(setq transient-mark-mode nil)

;; Show line number
;;(require 'linum)

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

;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;; blink
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)


;; end of line
(setq track-eol t)

