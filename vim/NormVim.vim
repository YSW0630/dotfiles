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
let &t_EI = "\e[1 q"  " Normal mode  : block
let &t_SI = "\e[5 q"  " Insert mode  : beam
let &t_SR = "\e[3 q"  " Replace mode : underline
autocmd VimEnter * silent! !echo -ne "\e[1 q"

" about line number
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
