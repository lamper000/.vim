"vundel start
set nocompatible              " be iMproved, required
filetype off                  " required
"set runtimepath+=~/.vim      " 设置runtime目录
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'emmet.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Vim-airline'
Plugin 'php.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/netrw.vim'
Plugin 'javascript.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"vundel end

"代码提示
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"----------------------------------------------------------------
"编码设置(windows airline)
"----------------------------------------------------------------
"
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
"解决consle输出乱码

"常规配置
set number
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set shortmess=atI
set nocompatible
set incsearch
let &termencoding=&encoding
set fileencodings=utf-8,gbk
"set guifont=yaHei_consolas_hybrid:h13
set guifont=Consolas_for_Powerline_FixedD:h13
set backspace=indent,eol,start
syntax on
color codeschool

"关闭菜单栏
if has("gui_running")
	set guioptions-=m 
	set guioptions-=T 
	set guioptions-=L 
	set guioptions-=r 
	set guioptions-=b 
	set showtabline=0 
endif

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""""""""  
"""airline配置
""""""""""""""""""""""""""""""""""""""""""  
set t_Co=256  
set laststatus=2  
set lazyredraw  
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="luna" 
let g:airline_powerline_fonts=1  
if !exists('g:airline_symbols')  
	let g:airline_symbols={}  
endif
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
