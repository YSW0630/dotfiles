" Change Cursor Style
let &t_EI="\e[2 q"       " Normal mode: block
let &t_SI="\e[6 q"       " Insert mode: beam
let &t_SR="\e[4 q"       " Replace mode: underline

let &t_8f="\e[38;2;%lu;%lu;%lum" " sets foreground color (ANSI, true-color mode)
let &t_8b="\e[48;2;%lu;%lu;%lum" " sets background color (ANSI, true-color mode)
set termguicolors	               " Enable GUI colors in the terminal
colorscheme torte

" Removes the Underline causes by Enabling Cursorline
highlight clear CursorLine
highlight clear CursorLineNR
"highlight CursorLine cterm=underline
highlight CursorLineNR cterm=bold ctermfg=green ctermbg=NONE
