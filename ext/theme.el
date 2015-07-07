;;; Highlight
;;----------------------------------------------------------------------------
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")

(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;高亮当前行
;;(require 'hl-line)
;;(global-hl-line-mode t)

;;设置背景颜色
;;(set-background-color "black")
;;设置字体颜色
;;(set-foreground-color "white")

;;; UI
;;----------------------------------------------------------------------------
(menu-bar-mode nil)
(tool-bar-mode nil)
(icomplete-mode t)
(scroll-bar-mode nil)

;; Auto Save
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(safe-local-variable-values (quote ((no-byte-compile t))))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "apple" :slant normal :weight normal :height 131 :width normal))))
 '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold))) t))

