" appearance
syntax on
set ai
set ci
set si
set ruler
set mouse=a
set cb=unnamedplus
set t_Co=256
set bg=dark
set cursorline
set showtabline=2
set splitbelow
set splitright
set scrolloff=10

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" ban
set nofoldenable
set nocompatible
set noexpandtab

" tab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" file type
filetype on
filetype indent on
filetype plugin on

" wrap
set wrap
set linebreak

" below mode
set showmode " default
set showcmd 

" fast exit
inoremap jk <C-[><Right>
inoremap jj <C-[><Right>

" auto complete big parantheses 
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {

" change cursor style
" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).
let &t_EI = "\e[2 q"  " Normal mode  : block
let &t_SI = "\e[6 q"  " Insert mode  : beam
autocmd VimEnter * silent execute '!echo -ne "\e[2 q"' | redraw!

" about line number
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
