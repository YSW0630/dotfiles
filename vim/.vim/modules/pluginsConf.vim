" Vim-plug start
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'YSW0630/vim-cppman'
Plug 'bfrg/vim-c-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'lifepillar/vim-mucomplete'
call plug#end()

" Clang-format
let g:clang_format#code_style="google"

" MUcomplete
let g:mucomplete#enable_auto_at_startup=1
let g:mucomplete#completion_delay=1

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
