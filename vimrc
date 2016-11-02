"vundel start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'emmet.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Vim-airline'
Plugin 'php.vim'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/netrw.vim'
Plugin 'javascript.vim'
Plugin 'othree/html5.vim'
Plugin 'gorodinskiy/vim-coloresque.git'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

"Plugin 'SirVer/ultisnips'
"Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'

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
set encoding=utf-8
set t_Co=256  
set laststatus=2  
set lazyredraw  
let g:airline#extensions#tabline#enabled = 1 "buffers
let g:airline_theme="luna" 
let g:airline_powerline_fonts=1  
if !exists('g:airline_symbols')  
	let g:airline_symbols={}  
endif
let g:airline#extensions#tabline#buffer_nr_show = 1


if has("win32")
	let g:airline_left_sep = '⮀'
	let g:airline_left_alt_sep = '⮁'
	let g:airline_right_sep = '⮂'
	let g:airline_right_alt_sep = '⮃'
	let g:airline_symbols.branch = '⭠'
	let g:airline_symbols.readonly = '⭤'
	let g:airline_symbols.linenr = '⭡'
	set guifont=Consolas_for_Powerline_FixedD:h13
else
	set fileencoding=utf-8
endif
"解决菜单乱码 (window)
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

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
set backspace=indent,eol,start
syntax on
color molokai
set guicursor=n-v-c:ver1,i-ci:ver1 "改变游标样式

"关闭菜单栏
if has("gui_running")
	set guioptions-=m 
	set guioptions-=T 
	set guioptions-=L 
	set guioptions-=r 
	set guioptions-=b 
	set showtabline=0 
	color solarized "gvim时启用solarized
endif

"UltiSnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"


runtime macros/matchit.vim  "%匹配html标签

"neocomplete 代码补全设置(cache omnifunc)
let g:neocomplcache_enable_at_startup = 1 

"neosnippet snippets代码块补全
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
	set conceallevel=2 concealcursor=niv " For conceal markers.
endif
let g:neosnippet#enable_snipmate_compatibility = 1 " Enable snipMate compatibility feature.
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets' " Tell Neosnippet about the other snippets

