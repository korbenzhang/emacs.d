;; Keys
;;----------------------------------------------------------------------------
;;(global-set-key [f7] 'compile)      ;;编译
;;(global-set-key [C-f7] 'gdb)        ;;调试
;;(setq-default compile-command "make")
;;(global-set-key [C-f8] 'previous-error)    ;;上一个错误
;;(global-set-key [f8] 'next-error)          ;;下一个错误

;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;; emacs default is M-X o
(global-set-key [f4] 'other-window)

;; 跳转到 Emacs 的另一个buffer窗口

;;Ctrl+F11:复制区域到寄存器
;;(global-set-key [C-f11] 'copy-to-register)

;;F11:粘贴寄存器内容
;;(global-set-key [(f11)] 'insert-register)

(global-set-key (kbd "C-x c") 'copy-lines)        ;;复制一行或者多行
(global-set-key (kbd "C-x d") 'zl-delete-line)    ;;删除一行

;;(global-set-key [C-f9] 'dired)
;;设置[C-f9]为调用dired命令

;;(global-set-key [C-f10] 'undo)
;;设置C-F10为撤销

;; backtab swith buffer
(global-set-key (kbd "<backtab>") #'(lambda ()
                              (interactive)
                              (switch-to-buffer (other-buffer (current-buffer) 1))))

;; F3 record macro, F4 stop record macro.
(global-set-key (kbd "C-x x") 'call-last-kbd-macro)

;; add space after ,
(global-set-key (kbd ",") #'(lambda ()
                    (interactive) (insert ", ")))

