Emacs Shortcuts
====================


Emacs快捷键的总结

文件操作

C-x C-f 打开文件,出现提示时输入/username@host:filepath可编辑FTP文件
C-x C-v 打开一个文件，取代当前缓冲区
C-x C-s 保存文件
C-x C-w 存为新文件
C-x i 插入文件
C-x C-q 切换为只读或者读写模式
C-x C-c 退出Emacs

编辑操作

C-f 前进一个字符
C-b 后退一个字符
M-f 前进一个字
M-b 后退一个字
C-a 移到行首
C-e 移到行尾
M-a 移到句首
M-e 移到句尾
C-p 后退一行
C-n 前进一行
M-x goto-line 跳到指定行
C-v 向下翻页
M-v 向上翻页
M-< 缓冲区头部
M-> 缓冲区尾部

C-M-f 向前匹配括号
C-M-b 向后匹配括号

C-l 当前行居中

M-n or C-u n 重复操作随后的命令n次
C-u 重复操作随后的命令4次
C-u C-u 重复操作随后的命令8次
C-x ESC ESC 执行历史命令记录，M-p选择上一条命令，M-n选择下一条命令

C-d 删除一个字符
M-d 删除一个字
C-k 删除一行
M-k 删除一句
C-w 删除标记区域

C-y 粘贴删除的内容

注意：C-y可以粘贴连续C-k删除的内容；先按C-y，然后按M-y可以选择粘贴被删除的内容

C-@ 标记开始区域
C-x h 标记所有文字
C-x C-x 交换光标位置和区域标记区开头
M-w 复制标记区域

C-_ or C-x u 撤消操作

执行SHELL命令

M-x shell 打开SHELL
M-! 执行SHELL命令 (shell-command)
M-1 M-! 执行SHELL命令,命令输出插入光标位置,不打开新输出窗口
M-| 针对某一特定区域执行命令(shell-command-on-region), 比如 C-x h M-|uuencode

窗口操作

C-x 0 关闭本窗口
C-x 1 只留下一个窗口
C-x 2 垂直均分窗口
C-x 3 水平均分窗口
C-x o 切换到别的窗口
C-x s 保存所有窗口的缓冲
C-x b 选择当前窗口的缓冲区
C-x ^ 纵向扩大窗口
C-x } 横向扩大窗口

缓冲区列表操作

C-x C-b 打开缓冲区列表
d or k 标记为删除
~ 标记为未修改状态
% 标记为只读
s 保存缓冲
u 取消标记
x 执行标记的操作

f 在当前窗口打开该缓冲区
o 在其他窗口打开该缓冲区

目录操作

C-x d 打开目录模式
s 按日期/文件名排序显示
v 阅读光标所在的文件
q 退出阅读的文件
d 标记为删除
x 执行标记
D 马上删除当前文件
C 拷贝当前文件
R 重名名当前文件
+ 新建文件夹
Z 压缩文件
! 对光标所在的文件执行SHELL命令
g 刷新显示
i 在当前缓冲区的末尾插入子目录的内容

[n]m 标记光标所在的文件，如果指定n，则从光标所在的文件起后n个文件被标记
[n]u 取消当前光标标记的文件，n的含义同上
t 反向标记文件
%-m 正则标记

q 退出目录模式

说明：在目录模式中，如果输入!，在命令行中包含*或者?，有特殊的含义。*匹配当前光标所在的文件和所有标记的文件，?分别在每一个标记的文件上 执行该命令。

程序编译

M-x compile 执行编译操作
M-x gdb GDB排错
M-x dbx DBX排错
M-x xdb XDB排错
M-x sdb SDB排错

搜索模式

C-s key 向前搜索
C-s 查找下一个
ENTER 停止搜索
C-r key 反向搜索
C-s C-w 以光标所在位置的字为关键字搜索
C-s C-s 重复上次搜索
C-r C-r 重复上次反向搜索
C-s ENTER C-w 进入单词搜索模式
C-r ENTER C-w 进入反向单词搜索模式
M-x replace-string ENTER search-string ENTER 替换
M-% search-string ENTER replace-string ENTER 交互替换
C-r 在进入单词搜索(查找/替换)模式后，该命令进入迭代编辑模式
C-M-x 退出迭代编辑模式，返回到查找/替换模式
C-M- s 向前正则搜索
C-M-r 向后正则搜索
C-M-% 正则交互替换

SHELL模式

C-c C-c 相当于Bash下的C-c
C-c C-z 相当于Bash下的C-z
C-c C-d 相当于Bash下的C-d
M-p 执行前一条命令
C-n 执行下一条命令
C-c C-o 删除最后一条命令产生的输出
C-c C-r 屏幕滚动到最后一条命令输出的开头
C-c C-e 屏幕滚动到最后一套命令输出的结尾
C-c C-p 查看前一条命令的输出
C-c C-n 查看后一条命令的输出

打印资料

M-x print-buffer 先使用pr,然后使用lpr
M-x lpr-buffer 直接使用lpr
M-x print-region
M-x lpr-region

收发邮件

M-x mail 发送邮件, C-c C-s 发送,C-c C-c 发送并退出
M-x rmail 接受邮件

M-x describe-bindings (C-h b) 得到快捷键
C-h d command-name 查询任何指令的详细信息（p15）
C-h t  帮助文档（中文）
C-x C-c 退出Emacs

删除文本：
Delete 向后删除
Backspace 向前删除
M-delete 向前删除单词
C-x delete 向前删除句子
C-d 删除光标处字符
M-d 向后删除单词
M-k 删除句子
C-k 删除行
C-_  /  C-x u 撤销删除
kill-paragraph（不存在快捷键，只有指令）
backward-kill-paragraph（不存在快捷键，只有指令）

C-y 粘贴当前block（可多次使用，当前block中是上次删除的内容）
M-y 返回到删除环上一次删除的block（后必须接C-y）

universal-argument：
C-u N 在指令前加常量前缀
C-g / Esc Esc Esc 退出已启动的当前指令
例如：C-u 6 C-k 删除3行（无universal-argument时，该值默认为4）

光标移动：
C-p previous，向上移动一行
C-n next，向下移动一行
C-b back，向前移动一个字符
C-f forward，向后移动一个字符
C-a 光标移动到当前行第一列
C-e 光标移动到当前行末列
M-a 光标移动到本句的开头（句子划分：被标点符号划分，含回车或者两个空格）
M-e 光标移动到本句的末尾（句子划分：被标点符号划分，含回车或者两个空格）
M-b 向后移动一个词（word）
M-f 向前移动一个词（word）
C-v 下翻屏
M-v 上翻屏
C-l 到中央
M-< 到buffer头部
M-> 到buffer尾部

C-s 向前搜索（详细见C-h b isearch-forward）
C-r 向后搜索（详细见C-h b isearch-forward）
C-g / Enter 终止搜索

Regexp搜索—使用正则表达式：
Esc C-s 向前Regexp搜索
Esc C-r 向后Regexp搜索
例如：bartok、footok
Esc C-r bar\|foo

文本替换：
无条件替换  M-x replace-string(or M-x replace-regexp)  注：从光标以后才开始替换
查询替换     M-%

搜索与替换总结：
<find> search-forward
n/a  replace-string

缓冲和文件
C-x C-f 查找文件（注：查找文件-文件的副本放在buffer，而不在硬盘修改；按几次Tab）
自动保存—每30s/300个输入之后（文件位置可配置）
C-x C-s 保存
C-x C-w 另存为（注：另存为之后，buffer与新文件名链接）

Emacs窗口:
C-x 1 最大化当前窗口，关闭其他窗口
C-x 2  得到两个当前buffer（水平划分）
C-x 3  得到两个当前buffer（垂直划分）
C-x o（字母）  窗口间切换（o：other）
other-window
注：文件：硬盘上实体
      buffer：文件数据的副本
            windows：buffer的视图

活动的buffer:
C-x C-b 列出所有buffers
C-h d Buffer-menu-(按Tab) 列出所有buffer-menu相关指令和快捷键（q：退出，不关闭打开的窗口）
C-x b 切换到目标buffer（可用Tab辅助自动补齐，Enter打开该buffer）
C-x k 关闭当前buffer

两种模式：major、minor
M-x 可用的模式名（如：c-mode） 设置buffer的模式
M-x describe-variable，再Enter，再输入auto-mode-alist 列出所有模式

编译代码：
M-x compile，再Enter，再gcc -o hello hello.c，再Enter 编译
M-! ～/hello 运行
M-x set-variable 设置变量值
C-x C-e
M-q(fill-paragraph) 对段落重排格式

C-x m，再C-x C-s  保存并发送邮件
M-x browse-url-lynx-emacs 调用lynx，输入URL
M-x doctor

网络部分
剪切：在需剪切内容前C-space，尾部C-w
复制：在需剪切内容前C-space，尾部M-w
粘贴：C-y
换行：C-m

文件操作
C-x C-f 打开文件,出现提示时输入/username@host:filepath可编辑FTP文件
C-x C-v 打开一个文件，取代当前缓冲区
C-x C-s 保存文件
C-x C-w 存为新文件
C-x i 插入文件
C-x C-q 切换为只读或者读写模式
C-x C-c 退出Emacs

编辑操作
C-f 前进一个字符
C-b 后退一个字符
M-f 前进一个字
M-b 后退一个字
C-a 移到行首
C-e 移到行尾
M-a 移到句首
M-e 移到句尾
C-p 后退一行
C-n 前进一行
M-x goto-line 跳到指定行
C-v 向下翻页
M-v 向上翻页
M-< 缓冲区头部
M-> 缓冲区尾部

C-M-f 向前匹配括号
C-M-b 向后匹配括号

C-l 当前行居中

M-n or C-u n 重复操作随后的命令n次
C-u 重复操作随后的命令4次
C-u C-u 重复操作随后的命令8次
C-x ESC ESC 执行历史命令记录，M-p选择上一条命令，M-n选择下一条命令

C-d 删除一个字符
M-d 删除一个字
C-k 删除一行
M-k 删除一句
C-w 删除标记区域

C-y 粘贴删除的内容

注意：C-y可以粘贴连续C-k删除的内容；先按C-y，然后按M-y可以选择粘贴被删除的内容

C-@ 标记开始区域
C-x h 标记所有文字
C-x C-x 交换光标位置和区域标记区开头
M-w 复制标记区域

C-_ or C-x u 撤消操作

执行SHELL命令

M-x shell 打开SHELL
M-! 执行SHELL命令 (shell-command)
M-1 M-! 执行SHELL命令,命令输出插入光标位置,不打开新输出窗口
M-| 针对某一特定区域执行命令(shell-command-on-region), 比如 C-x h M-|uuencode

窗口操作

C-x 0 关闭本窗口
C-x 1 只留下一个窗口
C-x 2 垂直均分窗口
C-x 3 水平均分窗口
C-x o 切换到别的窗口
C-x s 保存所有窗口的缓冲
C-x b 选择当前窗口的缓冲区
C-x ^ 纵向扩大窗口
C-x } 横向扩大窗口

缓冲区列表操作

C-x C-b 打开缓冲区列表
d or k 标记为删除
~ 标记为未修改状态
% 标记为只读
s 保存缓冲
u 取消标记
x 执行标记的操作

f 在当前窗口打开该缓冲区
o 在其他窗口打开该缓冲区

目录操作

C-x d 打开目录模式
s 按日期/文件名排序显示
v 阅读光标所在的文件
q 退出阅读的文件
d 标记为删除
x 执行标记
D 马上删除当前文件
C 拷贝当前文件
R 重名名当前文件
+ 新建文件夹
Z 压缩文件
! 对光标所在的文件执行SHELL命令
g 刷新显示
i 在当前缓冲区的末尾插入子目录的内容

[n]m 标记光标所在的文件，如果指定n，则从光标所在的文件起后n个文件被标记
[n]u 取消当前光标标记的文件，n的含义同上
t 反向标记文件
%-m 正则标记

q 退出目录模式

说明：在目录模式中，如果输入!，在命令行中包含*或者?，有特殊的含义。*匹配当前光标所在的文件和所有标记的文件，?分别在每一个标记的文件上 执行该命令。

程序编译

M-x compile 执行编译操作
M-x gdb GDB排错
M-x dbx DBX排错
M-x xdb XDB排错
M-x sdb SDB排错

搜索模式

C-s key 向前搜索
C-s 查找下一个
ENTER 停止搜索
C-r key 反向搜索
C-s C-w 以光标所在位置的字为关键字搜索
C-s C-s 重复上次搜索
C-r C-r 重复上次反向搜索
C-s ENTER C-w 进入单词搜索模式
C-r ENTER C-w 进入反向单词搜索模式
M-x replace-string ENTER search-string ENTER 替换
M-% search-string ENTER replace-string ENTER 交互替换
C-r 在进入单词搜索(查找/替换)模式后，该命令进入迭代编辑模式
C-M-x 退出迭代编辑模式，返回到查找/替换模式
C-M- s 向前正则搜索
C-M-r 向后正则搜索
C-M-% 正则交互替换

SHELL模式

C-c C-c 相当于Bash下的C-c
C-c C-z 相当于Bash下的C-z
C-c C-d 相当于Bash下的C-d
M-p 执行前一条命令
C-n 执行下一条命令
C-c C-o 删除最后一条命令产生的输出
C-c C-r 屏幕滚动到最后一条命令输出的开头
C-c C-e 屏幕滚动到最后一套命令输出的结尾
C-c C-p 查看前一条命令的输出
C-c C-n 查看后一条命令的输出

打印资料

M-x print-buffer 先使用pr,然后使用lpr
M-x lpr-buffer 直接使用lpr
M-x print-region
M-x lpr-region

收发邮件

M-x mail 发送邮件, C-c C-s 发送,C-c C-c 发送并退出
M-x rmail 接受邮件


M-c                             单词首字母改为大写
M-u                             单词的字母全部改为大写
M-l                              单词的字母全部改为小写

与位置交换操作有关的命令
C-t                            交换两个字符的位置
M-t                           交换两个单词的位置
C-x C-t                    交换两个文本行的位置

C-@                          标记文本块的开始（或结束）位置
C-x C-x                     互换插入点和文本标记的位置
C-w 或 SHIFT-DEL 删除文本块
M-w                          复制文本块
M-h                           标记段落
C-x C-p                   标记页面
C-x h                        标记整个缓冲区


