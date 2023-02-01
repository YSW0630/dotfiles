set ai
syntax on
set cb=unnamed
set t_Co=256
set mouse=a
" set cursorline
" set expandtab
set hlsearch
set incsearch
set foldmethod=indent
set nofoldenable
set tabstop=4
set shiftwidth=4
set ruler
filetype indent on
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set guifont=Consolas:h20
set bg=dark
inoremap jk <Esc> 
inoremap jj <Esc> 
" inoremap { {}<Left>
" inoremap {<CR> {<CR>}<Esc>O
" inoremap {{ {
" inoremap {} {}
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
let g:netrw_banner = 0
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
