set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'derekwyatt/vim-scala'

Plugin 'Shougo/vimproc.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

Plugin 'tpope/vim-fugitive' " git thing
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on

set background=dark
syntax enable
colorscheme 1989

"
" FILE BROWSER
let g:netrw_liststyle = 3 " This is the treeview in the file browser
let g:netrw_banner = 0 " Remove banner

"
" TABS
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smartindent

"
" UI
set relativenumber
set cursorline
set nowrap
set wildmenu

"
" BELLS
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"
" SEARCH
set incsearch
set ignorecase
set hlsearch
set smartcase

"
" SWAP
set noswapfile
set nobackup
set nowritebackup

" 
" MOTIONS
noremap j gj
noremap k gk

imap jj <ESC>

let mapleader=","

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Ubuntu\ Mono\ 16
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=InputMonoNarrow\ Light:h11:cANSI
    endif
endif

"
" GUISTUFF
"
set guioptions-=T " No toolbar
set guioptions-=m " No menubar
set guioptions-=r " No scrollbar

" FANCY OTHER STUFF

" Stripping white space for ts files
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType typescript,c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
