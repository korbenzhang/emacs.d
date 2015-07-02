

;;;;
(add-to-list 'load-path
                     "/home/m/ecb-2.40")    ;你的ecb解压目录
(require 'ecb)
(require 'ecb-autoloads)

(global-set-key (kbd "<f7>") 'ecb-minor-mode)   ; 打开ejb

;;;;ejb 快捷键
(global-set-key (kbd "C-<left>") 'windmove-left)   ;左边窗口
(global-set-key (kbd "C-<right>") 'windmove-right)  ;右边窗口
(global-set-key (kbd "C-<up>") 'windmove-up)     ; 上边窗口
(global-set-key (kbd "C-<down>") 'windmove-down)   ; 下边窗口




