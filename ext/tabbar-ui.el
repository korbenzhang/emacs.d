;; tabbar

(set-face-attribute 'tabbar-default-face nil
                    :family "DejaVu Sans Mono"
                    :background "gray80"
                    :foreground "gray30"
                    :height 1.0)

;; 设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button-face nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "yellow70"))

;; 设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected-face nil
                    :inherit 'tabbar-default
                    :foreground "DarkGreen"
                    :background "LightGoldenrod"
                    :box '(:line-width 2 :color "DarkGoldenrod")
                    :overline "black"
                    :underline "black"
                    :weight 'bold)

;; 设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected-face nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "#00B2BF"))



