;; Emacs Settings
;; -------------------------

(setq inhibit-startup-message t)

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

;; highlight selection.
(transient-mark-mode t)

;; Encodings
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")

;;invalid coding system UTF-8
;;(setq default-buffer-file-coding-system 'utf-8)

(setq transient-mark-mode nil)

;; Show line number
;;(require 'linum)

(menu-bar-mode -1)
(tool-bar-mode -1)
(icomplete-mode 1)
(scroll-bar-mode -1)

;;(display-time-mode 1)
;;(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)

(fset 'yes-or-no-p 'y-or-n-p)
(auto-compression-mode 1)

(show-paren-mode 1)
(setq visible-bell -1)

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

; Keys
(global-set-key [f7] 'compile)      ;;编译
(global-set-key [C-f7] 'gdb)        ;;调试
(setq-default compile-command "make")
(global-set-key [C-f8] 'previous-error)    ;;上一个错误
(global-set-key [f8] 'next-error)    ;;下一个错误

;Ctrl+F11:复制区域到寄存器
(global-set-key [C-f11] 'copy-to-register)
;;F11:粘贴寄存器内容
(global-set-key [(f11)] 'insert-register)

(global-set-key (kbd "C-x c") 'copy-lines)        ;;复制一行或者多行
(global-set-key (kbd "C-x d") 'zl-delete-line)        ;;删除一行







