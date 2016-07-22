"Vundle 配置
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle.vim : vim的一个非常好用的插件管理器
Bundle 'gmarik/Vundle.vim'

"更酷的启动界面
"Bundle 'mhinz/vim-startify'

"协作编程
"Bundle 'FredKSchott/CoVim'

"代码补全
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'YanhaoMo/snippets'
"括号等的自动补全
Bundle 'Raimondi/delimitMate'

"文件搜索
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/unite.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/mru.vim'

"静态语法检查
Bundle 'scrooloose/syntastic'

"代码浏览
Bundle 'majutsushi/tagbar'

"git支持
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

"美化
Bundle 'tomasr/molokai'
Bundle 'morhetz/gruvbox'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bling/vim-airline'
Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'altercation/vim-colors-solarized.git'
"Bundle 'fholgado/minibufexpl.vim'

" 代码bug追踪
Bundle 'ZenCoding.vim'

"编辑增强
"多光标编辑
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
"快速注释
Bundle 'scrooloose/nerdcommenter'
"自动对齐
Bundle 'godlygeek/tabular'
"快速移动
Bundle 'Lokaltog/vim-easymotion'
"代码块对齐用
Bundle 'Yggdroot/indentLine'
"状态栏
Bundle 'rstatusline'



"tmux支持
Bundle 'benmills/vimux'

"c/c++
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/c.vim'

"org-mode
Bundle 'jceb/vim-orgmode'
Bundle 'tpope/vim-speeddating'

"markdown
Bundle 'plasticboy/vim-markdown'
"可以通过浏览器实时预览，但是要安装额外依赖，详见官网
"Bundle 'suan/vim-instant-markdown'

"网页开发
Bundle 'mattn/emmet-vim'

"pyhon
Bundle 'klen/python-mode'
"Bundle 'python-imports.vim'

"js
Bundle 'coolwanglu/vim.js'

"golang
"Bundle 'fatih/vim-go'

Bundle 'mileszs/ack.vim'
"bundle 'vimwiki/vimwiki'
"Bundle 'vim-scripts/bufexplorer.zip'
"Bundle 'terryma/vim-smooth-scroll'

call vundle#end()

" 不使用vi的键盘模式，而是vim自己的
set nocompatible
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on

"gvim配置
if has("gui_running")
    let $LANG='en'                                              "设置gvim菜单栏始终显示为英文
    set langmenu=en
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
    set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 10
    set guioptions-=e
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=B
    set guioptions-=0
    set go=
    winpos 1000 0
    "set lines=100 columns=150                                   "开启时的窗口默认大小
endif

syntax on                                                       "语法高亮支持
set nu                                                          "显示行号
set rnu                                                         "显示相对行号
set wrap                                                        "当一行文字很长时换行
set showmatch                                                   "当光标移动到一个括号时会高亮显示对应的另一个括号
set showcmd                                                     "回显输入的命令
set showmode                                                    "显示当前的模式
set clipboard+=unnamed                                          "关联系统的剪贴板
set ruler                                                       "在编辑过程中右下角显示光标的行列信息
set nocp                                                        "让Vim工作在不兼容模式下
set encoding=utf-8                                              "默认使用utf-8编码格式
set shortmess=atI                                               "启动时不显示捐助乌干达儿童的提示
set so=6                                                        "上下滚行时空余6行
set autoindent                                                  "自动套用上一行的缩进方式
set smartindent                                                 "智能缩进
set mouse=a                                                     "开启鼠标支持
set laststatus=2                                                "总是显示状态行
set backspace=indent,eol,start                                  "对退格键提供更好的支持
set ts=4                                                        "设置tab长度为4
set sts=4                                                       "设置制表符宽度
set shiftwidth=4                                                "设置缩进空格数
set expandtab                                                   "用空格代替tab键
set smarttab                                                    "更加智能的tab键
set hid                                                         "当buffer被丢弃时隐藏它
set encoding=utf-8                                              "设置默认编码方式
set fileencodings=utf-8,cp936,gb18030,big5,euc-kr,latin1        "自动判断编码时 依次尝试一下编码
set ffs=unix,dos,mac                                            "设置文件类型
set hlsearch                                                    "高亮搜索内容
set ignorecase                                                  "搜索模式里忽略大小写
set smartcase                                                   "如果搜索字符串里包含大写字母，则禁用 ignorecase
set incsearch                                                   "显示搜索的动态匹配效果
set lazyredraw                                                  "解决某些类型的文件由于syntax导致vim反应过慢的问题
set ttyfast
set cc=80                                                       "第80字符处显示分隔符"
set foldmethod=indent                                           "折叠方式
set nofoldenable                                                "不自动折叠
"set completeopt-=preview,menu,longest                           "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set foldcolumn=1                                                "在行号前空出一列的宽度
set t_Co=256                                                    "设置256真彩色
"set nowrap                                                     "当一行文字很长时取消换行
set history=1000                                                "设置历史记录条数
"set autoread                                                   "当文件在外部被修改时自动载入
"set cindent                                                    "使用c语言的缩进格式
"set whichwrap+=<,>,h,l                                         "允许backspace和光标键跨越行边界
"set cmdheight=2                                                "显示两行命令行

"设置vim主题外观
colorscheme desert                                              "设置desert高亮主题
"set background=light                                           "设置vim背景为浅色
set background=dark                                             "设置vim背景为深色
set cursorline                                                  "突出显示当前行
set cursorcolumn                                                "突出显示当前列

set list lcs=tab:\›\ ,trail:•                                   "显示tab键为›，并且显示每行结尾的空格为'•'
"一些备用字符:›┆┇┊┋♠♦•
"我的状态行显示的内容
set statusline=[%t]\ %y\ %m%=%{&fileencoding}\ [%{&ff}]\ [%l,\ %c]\ [%L]\ [%p%%]

"备份设置
"set nobackup                                                   "不进行备份
"set nowb                                                       "重新载入文件时不要备份
"set noswapfile                                                 "不使用swf文件，可能导致错误无法恢复

"关闭错误声音
set noerrorbells
set novisualbell
set  t_vb=

"打开一个文件自动定位到上一次退出的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"保存.vim文件后不用退出即可生效
"au! bufwritepost .vimrc source %

"设置vim主题外观
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=light                                           "设置vim背景为浅色
"let g:gruvbox_termcolors=16
"colorscheme molokai                                             "设置gruvbox高亮主题
colorscheme gruvbox                                             "设置gruvbox高亮主题
"set background=dark                                             "设置vim背景为深色
"set cursorline                                                  "突出显示当前行
"set cursorcolumn                                                "突出显示当前列

"hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
"hi CursorColumn cterm=NONE ctermbg=237 ctermfg=NONE

hi vertsplit ctermbg=bg guibg=bg
hi GitGutterAdd ctermbg=bg guibg=bg
hi GitGutterChange ctermbg=bg guibg=bg
hi GitGutterDelete ctermbg=bg guibg=bg
hi GitGutterChangeDelete ctermbg=bg guibg=bg
hi SyntasticErrorSign ctermbg=bg guibg=bg
hi SyntasticWarningSign ctermbg=bg guibg=bg
hi FoldColumn ctermbg=bg guibg=bg

"NERDTree插件配置
let NERDTreeChDirMode=2                                         "设置当前目录为nerdtree的起始目录
let NERDChristmasTree=1                                         "使得窗口有更好看的效果
let NERDTreeMouseMode=1                                         "双击鼠标左键打开文件
let NERDTreeWinSize=25                                          "设置窗口宽度为25
let NERDTreeQuitOnOpen=1                                        "打开一个文件时nerdtree分栏自动关闭

"ctags插件配置
set tags+=/usr/include/tags

"cscope插件配置
if has("cscope")
    "set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    set cscopequickfix=s-,c-,d-,i-,t-,e- "在quickfix窗口中显示搜索结果


    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"syntastic插件配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚡'
"let g:syntastic_cpp_include_dirs = ['/usr/include/qt']
"let g:syntastic_cpp_compiler_options = '-std=gnu++11 -Wall'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" -------- youcompleteme自动补全配置 --------

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2    " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1   " 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>   "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>    "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处"

"let g:ycm_confirm_extra_conf = 0    " 关闭加载.ycm_extra_conf.py提示
"
"let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
"let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
"let g:ycm_error_symbol = '✗'
"let g:ycm_warning_symbol = '⚡'
"let g:ycm_add_preview_to_completeopt = 0                "不显示预览窗口
""let g:ycm_autoclose_preview_window_after_insertion = 1
""let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>', '<CR>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"let g:ycm_semantic_triggers = {
"            \ 'c' : ['->', '.', ' ', '(', '[', '&'],
"            \ 'objc' : ['->', '.'],
"            \ 'ocalml' : ['.', '#'],
"            \ 'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
"            \ 'perl' : ['->', '::'],
"            \ 'php' : ['->', '::', '.'],
"            \ 'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"            \ 'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
"            \ 'ruby' : ['.', '::'],
"            \ 'lua' : ['.', ':'],
"            \ 'erlang' : ['.', ':']
"            \ }
"
"" 主动调用补全
"let g:ycm_key_invoke_completion = '<C-a>'
"" 定义跳转到定义或声明
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" indentLine插件
let g:indentLine_char = '┊'                                     "代码块对齐

"UltiSnips插件配置
let g:UltiSnipsExpandTrigger="<tab>"
""let g:UltiSnipsJumpForwardTrigger="<tab>"
""let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit = "vertical"
"let g:UltiSnipsSnippetDirectories = ["UltiSnips", "bundle/snippets"]
let g:UltiSnipsSnippetDirectories = ["bundle/snippets"]

"rainbow_parentheses插件配置
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['red',         'firebrick3'],
            \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"vim-multiple-cursors插件配置
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"airline插件配置
let g:airline_powerline_fonts=1                                 "配置airline使用powerline字体

"vimwiki插件配置
"let g:vimwiki_list = [{'path' : '~/.vimwiki/',
"        \'template_path' : '~/.vimwiki/template/',
"        \'template_default' : 'default_template',
"        \'template_ext' : '.html',
"        \'path_html': '~/.vimwiki/html/'}
"        \]

"mru插件配置
let MRU_Auto_Close = 1
let MRU_Max_Entries = 40

" [Pymode] Regenerate autoimport cache
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
"let g:pymode_floding = 0

"设置以空格打开和关闭折叠
nmap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<CR>
"当一行很长时把分开的段行当作一行来移动
map j gj
map k gk
"将Esc键映射到jj
im jj <Esc>
im JJ <Esc>
im zz <Esc>
map zz <Esc>
im ZZ <Esc>
map ZZ <Esc>
"quickfix相关的一些快捷键
map cop :copen<CR>
map ccl :cclose<CR>
map cn :cn<CR>
map cp :cp<CR>
"emacs式的行内跳转
map <c-a> ^
map <c-e> $
imap <c-a> <Esc>^i
imap <c-e> <Esc>$a
"ff跳转到文件末尾
map ff G
"visual模式下快速对齐
vnoremap < <gv
vnoremap > >gv


"列出当前目录文件
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"打开树状文件目录
map <C-F3> \be
:autocmd BufRead,BufNewFile *.dot map <F5> :w<CR>:!dot -Tjpg -o %<.jpg % && eog %<.jpg  <CR><CR> && exec "redr!"

map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
im <F4> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap go g<C-]>
nmap bk <C-t>

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"<F5>更新cscope文件
map <F5> :!cscope -Rbq<CR>
im <F5> <Esc>:!cscope -Rbq<CR>

map <F6> :SyntasticCheck<CR>
im <F6> <Esc>:SyntasticCheck<CR>

"修改<leader>的键盘映射
nmap , <leader>
"当按下\+Enter时取消搜索高亮
map <silent> <leader><CR> :noh<CR>
"Unite插件配置
map <Leader>b :Unite -winheight=10 buffer<CR>
map <Leader>r :MRU<CR>
map <leader>f :NERDTreeToggle<CR>
"Tagbar插件配置
let g:tagbar_autoclose=1
map <leader>t :TagbarToggle<CR>
"设置文件类型辅助
map <leader>s :setfiletype
"更方便的窗口间跳转
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l
map <leader>h <c-w>h
map <C-j> <c-w>j
map <C-k> <c-w>k
map <C-l> <c-w>l
map <C-h> <c-w>h
"vimux插件配置
map <Leader>e :VimuxPromptCommand<CR>
map <Leader>x :VimuxCloseRunner<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
"更方便的页滚动
map <C-j> <C-f>
map <C-k> <C-b>

map ,,j <Plug>(easymotion-w)
map ,,k <Plug>(easymotion-b)
map ,,s <Plug>(easymotion-s)



"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# -*- coding=utf-8 -*-")
        call append(line(".")+1, "")
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")
"    elseif &filetype == 'mkd'
"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "	> File Name: ".expand("%"))
        call append(line(".")+1, "	> Author: ")
        call append(line(".")+2, "	> Mail: ")
        call append(line(".")+3, "	> Created Time: ".strftime("%c"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif

    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif

    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif

    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+8, "#endif")
    endif

    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:r"))
        call append(line(".")+7,"")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
      autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif
endif
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
