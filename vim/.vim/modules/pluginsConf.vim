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
Plug 'YSW0630/Shorter_clang_complete'
Plug 'lifepillar/vim-mucomplete'
call plug#end()

" Clang-format
let g:clang_format#code_style="google"

" MUcomplete
let g:mucomplete#enable_auto_at_startup=1
let g:mucomplete#completion_delay=1

" Clang-complete 
let g:clang_complete_auto=0
let g:clang_use_library=1
let g:clang_auto_select=1
let g:clang_close_preview=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_library_path='/usr/lib/llvm-14/lib/libclang.so.1'
let g:clang_auto_user_options='.clang_complete, path, compile_commands.json'
"let g:clang_jumpto_declaration_key="<C-[>"
"let g:clang_jumpto_declaration_in_preview_key="<C-W>["

" Snippets
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_trailing_placeholder=1
let g:clang_complete_optional_args_in_snippets=1
autocmd filetype c,cpp setlocal conceallevel=2    " hide concealed text completely unless replacement character is defined
autocmd filetype c,cpp setlocal concealcursor=vin " conceal in insert (i), normal (n) and visual (v) modes

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
