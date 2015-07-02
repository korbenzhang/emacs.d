;; author Korben Zhang

(setq inhibit-startup-message t) ;关闭启动画面

(show-paren-mode t)
(setq show-paren-style 'parentheses)
(setq frame-title-format "%b %I") ;显示文件名和大小

(auto-image-file-mode t) ;让Emacs可以直接打开、显示图片
(fset 'yes-or-no-p 'y-or-n-p) ;以Y/N代表yes/no
(setq auto-save-default nil) ;不生成名为#filename#的临时文件
(setq x-select-enable-clipboard t) ;支持和外部程序的拷贝
(global-font-lock-mode t) ;打开语法高亮



(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
(set-default-font "Consolas 16")

(tool-bar-mode nil)




