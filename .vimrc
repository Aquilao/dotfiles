

" --- 显示 ---
syntax on				"语法高亮
set number 				"开启行号
set norelativenumber 	"关闭相对行号
set cursorline			"开启所在行下划线
set wrap				"字符超出终端换行显示
let &t_ut=''			"修正可能会遇到的配色错误
set list
set listchars=tab:▸\ ,trail:▫

" --- 命令 ---
set showcmd				"显示命令
set wildmenu			"命令模式下提示菜单

" --- 搜索 ---
set hlsearch			"高亮搜索
exec "nohlsearch"
set incsearch			"输入中高亮
set ignorecase			"搜索忽略大小写
set smartcase			"智能大小写

" --- 操作 ---
set mouse=a				"允许鼠标操作
set tabstop=4			"<TAB> 缩进四行
set backspace=indent,eol,start	"<Backspack> 跳到上一行行尾
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set autochdir			"vim 执行程序在当前文件夹下

" --- 初始化 ---
set encoding=utf-8

"
map R :source ~/.vim/.vimrc<CR>
 

" --- 插件 ---
set nocompatible		"兼容性
filetype on				"识别文件格式
filetype indent on
filetype plugin on
filetype plugin indent on
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" Auto Complete
Plug 'Valloric/YouCompleteMe'

call plug#end()

color snazzy		"主题

