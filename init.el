;; author Korben Zhang

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; (require 'init-modeline)
(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) 
;; Must come before elpa, as it may provide package.el

;;(require 'idle-require)
(require 'init-elpa)

(require 'init-xterm)

;; my personal setup, other major-mode specific setup need it.
;; It's dependent on init-site-lisp.el
(if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))

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

