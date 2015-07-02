一些FAQ

Q:如何使用gdb设置断点的时侯让emacs高亮源代码那一行？

A:设断点是 C-x space
-------------------------------
ecb可以到这里下 载：http://ecb.sourceforge.net/
-------------------------------
Q:编辑 c++文件时，现在M-;用的是//形式的注释
我想用/**/的
怎么办 ?

A:[1]M-x c-mode
[2](defun my-c-comment ()
(interactive)
(insert "/* */"
(backward-char 3))
(global-unset-key "\M-;"
(global-set-key "\M-;" 'my-c-comment)
-------------------------------
Q:Emacs 和 XEmacs 的区别?

A:http://www.xemacs.org/About/XEmacsVsGNUemacs.html
最 新emacs for windows的下载地址
http://ftp.gnu.org/gnu/windows/emacs/

Q: 想在打开文件的时候就 auto indent ，不要老按 TAB 键，.emacs 怎样写?
A:
(global-set-key "\C-m" 'reindent-then-newline-and-indent)
或者 这样：
(add-hook 'c-mode-common-hook
(lambda ()
(define-key c-mode-map
"\C-m" 'reindent-then-newline-and-indent)))
-------------------------------
Q: 我的是21.3.1，ecb2.27。我的ecb不支持鼠标双击阿，不知道大家的ecb是什么版本的，能不能支持鼠标双击，或者用快捷键切换到ecb窗 口?

A:快捷键有啊。好些是C-c , g m 就调到methods窗口。g d 就goto directorey 窗口，
说实话，我觉得 ecb窗口跳转很不方便。不如speedbar，只要设置一下speedbar-get-focus的快捷键，这个是可以 toggle的。而且speedbar上该有的都有，成员函数列表都在上面。按 f 就跳到 file mode，基本ecb有的它都有了。
-------------------------------
Q:ecb 有没有windows版本的?

这些东西没有什么平台一说，都是elisp语言，用emacs byte-compile一下就可以了。但是我认为ecb的跳转很麻烦。
-------------------------------
Q: 我在emscs中打开了几个文件进行编辑，我要关闭缓存中某一个文件应当怎样操作？

A:1C-x k
A2:c-x c-b 在要关闭的buffer的那行 d, 在x就ok了
-------------------------------
Q: 我想在打开文件的时候就 auto indent

A:你可以C-x h 选中所有内容，然后C-M \ 就可以了。
-------------------------------
Q: 不想要emacs de工具栏,怎样让它不显示?

A1:options 里面 show/hide ，关掉 toolbar，然后 options 再选择 一下 save options ，下次就再也不出来了。
A2:也可把(tool-bar-mode nil)加到.emacs中
-------------------------------
Q:emacs 的正确发音?

A:一马克思?一卖壳丝？
-------------------------------
Q:在打开文件时如果文件名中有空格, 请问我怎么输入这个空格
发表：

A:在空格前加"\"
-------------------------------
Q:果我不小心按错了键，跑到文件头或者文 件尾了，怎么能快速回到刚才光标所在的位置？

A:C-u C-@
-------------------------------
Q:编译某行出错时，我想快速把光标定位到此 行，我应该如何做？

A:可以使用C-x ' 。注意是 `，也就是F1 下面的那个，不是单引号。
实在不行，M-x next-error 也可以。
-------------------------------
Q: 怎样让emacs中复制的 东西可以在系统中使用?好象emacs不和系统使用相同的粘贴板

A1:C-y 不行吗？要不就直接在emacs中干吧。M-x shell
A2：
M-x gdb
file xxx.c
run
-------------------------------
Q：emacs 中怎样才能运行.c的程序？我只会编译.c的程序，不会运行。每次只能退出emacs，在shell下运行

A：不用退出啊、直接按C-x C-z 就会进入shell，你然后shell下运行，然后fg回来就可以了。或者你M-x shell，直接在emacs中运行也可以的。
-------------------------------
Q：我的emacs缩进 是2两个空格。怎样设置为8个呢？

A：(setq c-basic-offset 8）
-------------------------------
Q：终端下 使用Ctrl+x 2/3可以上下左右分屏，默认的是一半对一半。请问可以调整两个窗口的大小吗？

A：M-x enlarge-window （c-x ^)
M-x shrink-window
你可以把他们绑定到你喜欢得键上。
-------------------------------
Q： 请问在emacs里怎么显示日期？

A：(setq display-time-day-and-date t)
(display-time)
-------------------------------
Q： 请问C-s时候如何粘贴要搜的内容?

A1：移动光标到你要查找的东西上（不用粘贴）， C-s C-w
A2：M-y
-------------------------------
Q： 不产生备份文件

A：(setq make-backup-files nil)
-------------------------------
Q： 请问在emacs中怎么删除从光标位置到行首？

A1：Meta - C-k
A2：Ctrl-u 0 Ctrl-k
-------------------------------
Q： 我在xp中用GNU Emacs 21.3.1...
当按pagedown多次后...emacs就会失去响应...请问怎么回事?

A：因为你设置了scroll-margin
-------------------------------
Q：写程序时经常会 遇到一个很长的代码块（用'{}'包起来的）
有什么办法能把一个代码块缩起来，需要的时候再展开

A：
M-x hs-minor-mode
* C-c @ ESC C-s show all
* C-c @ ESC C-h hide all
* C-c @ C-s show block
* C-c @ C-h hide block
* C-c @ C-c toggle hide/show

我重新定义了show block和hide block的键
(add-hook 'c-mode-hook 'hs-minor-mode)
C-c bh show block
C-c bs hide block
-------------------------------
Q： 每次都语法高亮显示：(global-font-lock-mode t) 加入你的.emacs文件。

-------------------------------
Q：装上ecb，有个color-themes可以调整配色方 案，ecb-change-layout可以改变ecb窗口布局
-------------------------------
Q：emacs 中，想复制一段文字，或复制一行，应该怎样做
我现在是先cut，（C-SPACE ..... C-w），然后在paste（C-y）一下,有没有更好的操作

A:M-w
-------------------------------
Q:请问谁知道在编译程序的时候,怎样让光标从当前 buffer自动跳到正在编译程序的buffer,然后光标一直保持在这个buffer的底部?我现在每一次编译程序后,都是C-x o,然后再C-Shift >;到最底看结果,挺麻烦的,不知道这样一个..........

A:
;; S-F9 调用 compile 并设置编译命令
;; F9 则保存所有文件并编译(无提示)
(defun du/onekey-compile ()
"Save buffers and start compile"
(interactive)
(save-some-buffers t)
(switch-to-buffer-other-window "*compilation*"
(compile compile-command)
; (other-window 1)
)
(global-set-key [S-f9] '(lambda ()
(interactive)
(switch-to-buffer-other-window "*compilation*"
(compile)
; (other-window 1)
))
(global-set-key [f9] 'du/onekey-compile)
-------------------------------
Q:如何显示 ASCII表?

A:http://www.cpqd.com.br/~vinicius/emacs/ascii.el
-------------------------------
Q: 怎样使得 emacs 里面， 选取的区域为矩形，而不是一行行全选上了？

A:Ctrl+空格建，然后把光标移到下几行
ctrl+x r k
ctrl+x r y
-------------------------------
Q： 我的tab键被用来做格式化功能了，那我怎样才能键入一个真正的tab呢？

A：C-q TAB
-------------------------------
Q：如何重新从磁盘里load当前编辑的文 件？因为有时候文件可能被别人改了，所以才有这个需求

A：M-x revert-buffer
-------------------------------
Q：一般我的emacs 启动后都是去/usr/share/emacs/site-lisp下面找扩展程序
请问这个目录是否可以指定？
因为我现在要把我的 emacs搬家到另一个没有root权限的机器
所以我不能去改他们的/usr/share/emacs/site-lisp，只能在自己的目录干 活

A：
在.emacs最前头加一条(setq load-path (cons "/home/bleem1998/.emacs-site-lisp/" load-path))
然后把所有的扩展包都丢在"/home /bleem1998/.emacs-site-lisp/"就可以了
-------------------------------
Q： 请问在emacs中如何设置字体和背景的颜色？

A：设置背景颜色 M-x set-background-color
可以写到 .emacs里打开emacs就设置：
(set-face-background 'default "azure") ; azure或者别的颜色
如果只想在window模式下设置背景，终端下不需要，就加上判断：
(if window-system
(set-face-background 'default "azure"))
-------------------------------
Q： 文本方式下，emacs的有些热键被终端的热键代替了。比如：ctrl-h在终端中是退格键，而emacs中是在线帮助，结果在emacs中按ctrl- h就变成了删除光标前面的字符。这种情况还很多。要怎样设置才能用emacs的热键替代终端的..........

A：
(global-set-key "\C-h" 'backward-delete-char-untabify)
(global-set-key [DEL] 'delete-char)
-------------------------------
Q：我用emacs，屏幕显 示大约是80行，25列，开多个窗格时，每个窗格显示不了多少字符。
能不能让屏幕显示更多的行和列？

A：不是很清楚你的意思。是emacs窗口不够大？还是emacs编辑时自动换行的列太小？
如果是后者 (setq default-fill-column 85)
如果是前者，可以在开emacs时选择大点的尺寸，或者动动鼠标拉大点 -_-
(if window-system
(setq default-frame-alist
(append
'((top . 0) (left . 0) (width . 120) (height . 60))
default-frame-alist)))
-------------------------------
Q：fcitx 的热建 Ctrol－Space 和 emacs 的 mark-set 重了， 我每次在 emacs里面输入中文，就不能mark-set了，怎么办啊？

A：Mark可以用 C-@
-------------------------------
Q：怎样把所有的/r/n都替换成 /n，或者怎样删除所有的/r

A：除了使用一些工具软件（如 dos2unix、tr 等）对文件直接进行转换外，在 Emacs 中有如下两种方法：

[1]、替换法
使用 Emacs 的替换命令 replace-string 将 \r 替换为空以达到删除的目的：
M-x replace-string RETURN # 执行 replace-string 命令
Replace string: C-q C-m RETURN # 替换字符串。C-q C-m 为 \r 字符的输入形式
with: RETURN # 替换为空字符串

[2]、解码法
如果 Emacs 对文件的自动解码失败，可指定文件的解码方式打开文件。对于本问题来说，指定一种可行的 dos 解码方式即可（如 chinese-euc-dos），Emacs将会自动进行转换，从而能正确显示Window格式的文本文件的内容。在启动 Emacs 之后：
C-x C-m c chinese-euc-dos RETURN # 指定编码方式为chinese-euc-dos
C-x C-f your_file_name RETURN # 打开文件
-------------------------------
Q：>;>; 1.有什么可设置emacs在选定文本后输入时把选定的文本换掉?

A：M-x pending_delete_mode # 切换到 Delete_Selection 模式
-------------------------------
Q：>;>; 2.如何将一段选定的文字在大小写之间切换??

A：C-x C-l # 转换为小写文字
C-x C-u # 转换为大写文字
-------------------------------
Q：emacs 中如何设置显示文件字体的大小？

A：可通过修改 Default face 的 Height 属性来实现（customize-face命令或者在菜单中找修改 face 的一项）。如果是 XEmacs，有菜单选项可直接更改字体大小。
-------------------------------
Q： 请问从其他地方copy到emacs的快接键

A：

拷贝一个文件到一个ｂｕｆｆｅｒ里面用c-x i
拷贝一个buffer到另外一个buffer用c-x c-i
拷贝剪 贴板里的用c-y
在ｌｉｎｕｘ力，可以直接用鼠标选定要拷贝的东西，再用鼠标中间的键拷贝到buffer里
-------------------------------
Q： 如何让emacs启动后就最大化？

A：  (setq initial-frame-alist '((top . 0) (left . 0) (width . 97) (height . 49)))
数值自己修改吧。

