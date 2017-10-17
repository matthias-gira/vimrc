syntax enable
set background=dark
colorscheme spring-night

"
" TABS
set tabstop=4
set softtabstop=4
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
        set guifont=Iosevka\ Term\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas:h14:cANSI
    endif
endif

"
" GUISTUFF
"
set guioptions-=T " No toolbar
set guioptions-=m " No menubar
set guioptions-=r " No scrollbar
