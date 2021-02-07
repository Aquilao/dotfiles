

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
set clipboard+=unnamedplus
set backspace=indent,eol,start	"<Backspack> 跳到上一行行尾
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set autochdir			"vim 执行程序在当前文件夹下

" --- 初始化 ---
set encoding=utf-8

"
map R :source init.vim<CR>
 

" --- 插件 ---
set nocompatible		"兼容性
filetype on				"识别文件格式
filetype indent on
filetype plugin on
filetype plugin indent on
call plug#begin('~/.vim/plugged')
Plug 'mg979/vim-xtabline'			" 上方状态栏
Plug 'vim-airline/vim-airline'		" 下方状态栏
Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
" Auto Complete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-jedi'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ncm2/ncm2-go'
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }


call plug#end()

"color snazzy		"主题
"color gruvbox
color sonokai
"set background=dark

"缓存
autocmd BufEnter * call ncm2#enable_for_buffer()
" 补全模式,具体详情请看下文
set completeopt=menu,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
" 延迟弹窗,这样提示更加流畅
 let ncm2#popup_delay = 5
 "输入几个字母开始提醒:[[最小优先级,最小长度]]
 "如果是输入的是[[1,3],[7,2]],那么优先级在1-6之间,会在输入3个字符弹出,如果大于等于7,则2个字符弹出----优先级概念请参考文档中
 let ncm2#complete_length = [[1, 1]]
 "模糊匹配模式,详情请输入:help ncm2查看相关文档
 let g:ncm2#matcher = 'substrfuzzy'
 "使用tab键向下选择弹框菜单
 inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" 
 "使用shift+tab键向上选择弹窗菜单,这里不设置因为笔记本比较难操作.如果向下太多我通常习惯使用Backspace键再重新操作一遍
 inoremap <expr> <S> pumvisible() ? "\<C-p>" : "\<S>"
