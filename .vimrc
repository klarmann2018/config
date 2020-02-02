"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"      bo  lee
" Version: 
"       1.0 - 2014-12-05 12:51:11
"       1.1 - 2014-12-08 20:41:19
"       1.2 - 2014-12-09 18:54:36 -- upload to GitHub
"       1.3 - 2014-12-11 14:58:37 -- 2015-01-06 19:49:47 -- 已经上传
"       1.4 - 2015-01-07 17:39:58 -- 2015-01-11 22:27:31
"
"       1.8 - Tue May 19 09:48:07 CEST 2015 在家， 继续我的 vim
"       1.9 - 2015-06-28 20:02:34 statusline ， 修改了， 运动坚持。
"
"       2.0 - 2018-09-02 16:46:32 厦门
" Blog_post: 
"	https://klarmannde.wordpress.com
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the version from:
"
"           https://github.com/klarmann/bobovimrc
"
"插入模式 缩进： ctrl-T ctrl-D
"统计字数 ： g ctrl-g
"spell: 检查 set spell 开启 set nospell 关闭 "]s 下一个 [s 上一个 z= 选择正确拼写 zg 添加用户拼写 zw 删除用户拼写
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" leader键的功能设置  修改leader键为逗号
let mapleader=","
let g:mapleader = ","

" ,ee 快速编辑 .vimrc
nnoremap <leader>ee :e ~/.vimrc<CR>

" ,vv  快速编译 
"nnoremap <silent><leader>vv :source ~/.vimrc<CR>

" ,w 快速保存 Fast saving
nmap <leader>w :w!<cr>

" 设置缩写
abbreviate noo ==============================================================
abbreviate moo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
abbreviate #e  ****************************************/ 
abbreviate #b /**************************************** 
abbreviate #i #include
abbreviate #d #define

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插入当前系统时间 ， 上边的版本后面时间 就是 用这个插入的，方便多了
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
nnoremap <F5> "=strftime("%F %H:%M:%S")<CR>gP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 插件的设置 Vundle －－ 用来管理插件 方便快捷，整齐大方。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set nocompatible              " be iMproved, required, 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 中文输入 vim im
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" ctrl- \ 更方便，同emacs 中eim 一样了
" 用 ctrl n 翻页。 还有就是 ctrl l 输入空格方便些。 目前偏向于 ctrl \
"Plugin 'VimIM'
"let g:vimim_map='c-bslash' "  Ctrl-\ 开关输入法 这样的话 就和 emacs 中的eim一样了
"let g:vimim_cloud=-1 " 彻底关闭云输入
"let g:vimim_toggle=-1 " 彻底关闭循环键

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" ColorScheme 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'peaksea'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" drawit --> 画图工具
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'DrawIt'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"NerdTree的设置 
"help NERD_tree.txt
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
Plugin 'The-NERD-tree'
nnoremap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1
let NERDTreeHijackNetrw=1
"autocmd vimenter * NERDTree  " 打开vim 自动打开 nerdtree


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Netrw 是内建插件，当你使用vim尝试打开目录时，vim会自动调用netrw.vim插件打开该目录
"-  返回上级目录        c       切换vim的当前工作目录为正在浏览的目录
"d 创建目录             D       删除文件或目录
"i 切换显示方式         R       改名文件或目录
"s 选择排序方式         x       定制浏览方式，使用你指定的程序打开该文件
" 其它常用键，诸如使用书签、隐藏符合条件的文件等，请参阅netrw帮助页。 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" netrw setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"let g:netrw_winsize = 30
"nmap <silent> <leader>fe :Sexplore!<cr> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" BufExplorer 
" This plugin can be opened with <leader+o>                   
" BufExplorer已经映射了几个键绑定，例如，使用”,bv“就可以打开一个垂直分割窗口显示当前的缓冲区
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'bufexplorer.zip'
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber
"map <leader>o :BufExplorerVerticalSplit<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" mru.vim  Plugin to manage Most Recently Used (MRU) files. 
" Includes my own fork which adds syntax highlighting to MRU.
" This plugin can be opened with <leader+f>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'mru.vim'
"map <leader>f :MRU<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"下面是程序语言类的 插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"YOUCOMPLETEME
"'Valloric/YouCompleteMe'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
Plugin 'Valloric/YouCompleteMe'
let g:ycm_server_python_interpreter='/usr/bin/python'
" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_global_ycm_extra_conf = \"~/.vim/.ycm_extra_conf.py\"

" C family Completion Path
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 大牛的
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings=1
"let g:ycm_key_invoke_completion = '<c-z>'
"set completeopt=menu,menuone
"
"noremap <c-z> <NOP>
"
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"2018 自动索引确定文件所属的工程目录，即文件当前路径向上递归查找是否有.git,.svn,.project等标志性文件（可以自定义）来确定当前文档所属的工程目录。
"检测同一个工程下面的文件改动，能会自动增量更新对应工程的.tags文件。每次改了几行不用全部重新生成，并且这个增量更新能够保证.tags文件的符号排序，方便
"Vim 中用二分查找快速搜索符号。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"少用CTRL-]直接在当前窗口里跳转到定义，多使用CTRL-W
"]用新窗口打开并查看光标下符号的定义，或者CTRL-W }使用 preview
"窗口预览光标下符号的定义。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'ludovicchabant/vim-gutentags'
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" scrooloose/syntastic
" Syntastic is a syntax checking plugin that runs files through external syntax
" checkers and displays any resulting errors to the user. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'scrooloose/syntastic'

""""""""""""""""""""""""""""""
"ctags 
""""""""""""""""""""""""""""""
"在你项目所在目录的顶层执行ctags-R，该目录下会多出个tags文件；
"在vim中引入标签数据库文件。在vim中执行命令:settags=/home/your_proj/tags
"在 ~/workspace/ 建立了 源码 0.11 目录 进行测试
"需要进行函数名、变量名、结构名、结构成员补全时输入Ctrl+X Ctrl+O，
"需要头文件名补全时输入Ctrl+X Ctrl+I，需要文件路径补全时输入Ctrl+X Ctrl+F。
" "取消补全内容以分割子窗口形式出现，只显示补全列表
"
"set tags=~/workspace/linux-0.11/tags
"set tags=~/work/linuxKernel/linux-0.11/tags
"set tags=~/workspace/linuxKernel/linux-0.11/tags

"set completeopt=longest,menu

set tags=./.tags;,.tags

""""""""""""""""""""""""""""""
" Taglist
"o             在一个新打开的窗口中显示光标下tag
"u             更新taglist窗口中的tag
""""""""""""""""""""""""""""""
Plugin 'taglist.vim'
nnoremap <silent> <F10> :TlistToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定 系统中 ctags 程序位置
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim
""""""""""""""""""""""""""""""
" bash 的支持
""""""""""""""""""""""""""""""
Plugin 'bash-support.vim'

""""""""""""""""""""""""""""""
" c.vim 
" h csupport 查看帮助
""""""""""""""""""""""""""""""
"    Statement oriented editing of  C / C++ programs
"   Speed up writing new code considerably.
"   Write code und comments with a professional appearance from the beginning.
"   Use code snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
Plugin 'c.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" additional vim c++ syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
Plugin 'octol/vim-cpp-enhanced-highlight'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"2018 动态检查
"大概长这个样子，随着你不断的编辑新代码，有语法错误的地方会实时帮你标注出来，侧边会标注本行有错，光标移动过去的时候下面会显示错误原因，而具体错误的符号下面会有红色波浪线提醒。Ale
"支持多种语言的各种代码分析器，就 C/C++ 而言，就支持：gcc, clang, cppcheck 以及
"clang-format 等，需要另行安装并放入 PATH下面，ALE能在你修改了文本后自动调用这些
"linter 来分析最新代码，然后将各种 linter 的结果进行汇总并显示再界面上。
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
Plugin 'w0rp/ale'
"let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
"
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

"let g:ale_sign_error = ""\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"2018
"再 Vim 8 以前，编译和运行程序要么就让 vim 傻等着结束，不能做其他事情，要么切到一个新的终端下面去单独运行编译命令和执行命令，要么开个 tmux 左右切换。如今新版本的异步模式可以让这个流程更加简化
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'skywind3000/asyncrun.vim'
" 设置 F10 打开/关闭 Quickfix 窗口
"nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" ctrlp.vim: Fuzzy file, buffer, mru and tag finder. 
" In my config it's mapped to <Ctrl+F>, because <Ctrl+P> is used by YankRing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'kien/ctrlp.vim'
"let g:ctrlp_map = '<c-f>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"mattn/emmet-vim 
" zencoding: Expanding abbreviation like zen-coding, 
" very useful for editing XML, HTML.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'mattn/emmet-vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"  goyo.vim and vim-zenroom2: Remove all clutter and focus only on the essential.
"   Similar to iA Writer or Write Room
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'junegunn/goyo.vim'
"Plugin 'amix/vim-zenroom2'
"map <leader>z :Goyo<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" vimwiki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'vimwiki'
" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
"let g:vimwiki_menu = ''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" itchyny/calendar.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Plugin 'itchyny/calendar.vim'

Plugin 'vim-latex/vim-latex'
"Plugin 'ervandew/supertab'

"Plugin 'Snipmate'

"Plugin 'jiangmiao/auto-pairs'

"Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"markdown
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_no_default_key_mappings = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required  为特定文件类型载入相关缩进文件
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting ,打开高亮
syntax enable

" teminal 支持彩色
    set t_Co=256
    set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') 
    "colorscheme jellybeans 
    "set background=dark
    "colorscheme molokai
    "colorscheme jellybeans 
    "colorscheme peaksea
    colorscheme morning
    "colorscheme desert
    
   " let g:solarized_termcolors=256
   " let g:solarized_termtrans=1
    "colorscheme solarized 
else 
    set background=dark
    "    colorscheme peaksea
    "colorscheme  jellybeans
    colorscheme solarized
endif

" 设置字体
set guifont=DejaVu\ Sans\ mono\ 13 
"set guifont=Inconsolata\ 13 

" 设置中文字体
set guifontwide=KaiTi\ 14


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile

" 设置文件的代码形式
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

" Use Unix as the standard file type
set ffs=unix,dos,mac

"新建文件编码
set fenc=utf-8

"设置路径
set autochdir

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs " 不要用空格代替制表符
set expandtab

" Be smart when using tabs ;) 在行和段开始处使用制表符
set smarttab

" 1 tab == 4 spaces " Tab键的宽度
" 统一缩进为4
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Linebreak on 500 characters
set lbr
"set tw=500
"以下设置用来是vim正确显示过长的行
set textwidth=80
"set formatoptions=qrnl
set formatoptions=qrn

" 自动缩进
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" 要查看 左右 10个字符的上下文
"set sidescroll=10

" 光标移动到buffer的顶部和底部时保持3行距离 
"set scrolloff=3         

" 折叠 zf,zo,zc,zd,zR,zM,zE
" 指定宽度的列在窗口的一侧显示
set foldcolumn=2

" Configure backspace so it acts as it should act;
" 设置 insert 模式下退格键 何时可以删除光标前的字符
" 3个选项 分别是 可以删除位于行首的空格， 断行， 及 开始进入 insert
"模式前的 位置
set backspace=indent,eol,start

" 多数移动光标命令都会在行首 行尾停止不动 , whichwrap 可以控制此时行为规则
" b,s,<,> 针对normal 模式下的 退格键，空格键，左，右键  [,] 使得 左右键 在
" insert 模式下也可用 set whichwrap& 可恢复默认值，其他也是
" 让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,]

" 改变制表符 外观 ^I 不是很美观， 改变成 >--- 显示
"set listchars=tab:>-,trail:-

" 规定关键字， 就是一个word 中可以包含哪些字符,  添加	-这样的话 形如
" upper-case 的词就可以被当作  word了 删除一个 字符 使用 操作符 -= , 如 删除 _
" set iskeyword-=_  set iskeyword+=- 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position  设置 右下角的 显示 当前光标 行列信息
set ruler

" Height of the command bar " 显示状态行数，高度
"set cmdheight=2

"匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>

" Ignore case when searching
set ignorecase

"搜索逐字符高亮
set hlsearch                " set hightlight search
set incsearch               " set incremental search

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

"显示行号
set number

" 历史记录数
set history=1000

" A buffer becomes hidden when it is abandoned
set hid

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
"set tm=500

"右下角显示一个完整命令的已经完成部分, 输入的命令显示出来，看的清楚些
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 窗体设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"彩色显示第85行
"set colorcolumn=85

"行号栏的宽度
"set numberwidth=4

""去除左右两边的滚动条
set go-=r
set go-=L

"设置光标高亮显示, 高亮光标所在行
"set cursorline
"set cursorcolumn
set ttyfast
"set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set go=           " 不要图形按钮   

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2        " 启动显示状态行(1),总是显示状态行(2) 

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} "状态行显示的内容 

"set statusline=
"set statusline+=%-3.3n\         " buffer number
"set statusline+=%f\             " filename
"set statusline+=%h%m%r%m        " status flags
"set statusline+=\[%{strlen(&ft)?&ft:'none'}]    " file type
"set statusline+=%=              " right align remainder
"set statusline+=0x%-8B          " character value
"set statusline+=%-14(%l,%c%V%)  " line, character
"set statusline+=%<%P            " file position

" 显示中文帮助
"if version >= 603
"    set helplang=cn
"    set encoding=utf-8
"endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
" spell 拼写检查打开拼写检查(Turning on the Vim spell check)::set spell
" 关闭拼写检查(Turning off the Vim spell check)：:set nospell
" :setlocal spell spelllang=en_us 
" :setlocal spell spelllang=de
" ]s        : 将光标移到下一个拼写错误处
"[s        : 将光标移到上一个拼写错误处
"zg       : 将单词加入词典
"zug     : 撤销将单词加入词典
"z=        : 拼写建议
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
"vnoremap <silent> * :call VisualSelection('f', '')<CR>
"vnoremap <silent> # :call VisualSelection('b', '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Editing mappings     键盘命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
"map 0 ^
" Treat long lines as break lines (useful when moving around in them)
"map j gj
"map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Disable highlight when <leader><cr> is pressed
"map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
"map <leader>bd :Bclose<cr>

" Close all the buffers
"map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
"map <leader>tn :tabnew<cr>
"map <leader>to :tabonly<cr>
"map <leader>tc :tabclose<cr>

" Shortcuts for moving between tabs.
" Alt-j to move to the tab to the left
"noremap <A-j> gT
" Alt-k to move to the tab to the right
"noremap <A-k> gt

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"插入模式下移动, 有用，在插入模式下，不停移动。 方便！！
"inoremap <C-j> <down>
"inoremap <C-k> <up>
"inoremap <C-l> <right>
"inoremap <C-h> <left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 功能函数
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"C，C++ 按F5编译运行
"map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        " exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

"代码格式优化化
map <F6> :call FormartSrc()<CR><CR>
"定义FormartSrc()
func! FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"  dictionary completion :ctrl-x ctrl-k 
set dictionary=/usr/share/dict/words

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" byte_of_vim_v051 自己弄个 plugin 试试
"   xmlheader.vim -> ~/.vim/ftplugin/xmlheader.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
autocmd BufNewFile *.xml source ~/.vim/ftplugin/xmlheader.vim

