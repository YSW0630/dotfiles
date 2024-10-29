"   __  ___    _   ___       _____          ___
"   /  |/  /_ _| | / (_)_ _  / ___/__  ___  / _/
"  / /|_/ / // / |/ / /  ' \/ /__/ _ \/ _ \/ _/
" /_/  /_/\_, /|___/_/_/_/_/\___/\___/_//_/_/
"        /___/

" Start some plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'dense-analysis/ale'
Plug 'xavierd/clang_complete'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'mbbill/undotree'
Plug 'bfrg/vim-cpp-modern'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/vim-indent-guides'
Plug 'lifepillar/vim-mucomplete'
Plug 'davidhalter/jedi-vim' " If python-jedi has installed
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' } " If nodejs and yarn have installed
call plug#end()

" set molokai theme
let g:molokai_original=1
let g:rehash256=1

" set airline theme
let g:airline_theme='deus' " 'term' 'jet' 'google_dark' 'molokai' 'base16_seti' 'base16_dracula'

" toggle NERDTree
nmap <leader>e :NERDTreeToggle<cr>

" toggle UndoTree
nmap <leader>T :UndotreeToggle<cr>

" toggle Tagbar
nmap <leader>t :TagbarToggle<cr>

" toggle Clang Format (replaced by ALE)
"nmap <leader>f :ClangFormat<cr>

" toggle Indent Guide
let g:indent_guides_enable_on_vim_startup=1
nmap <leader>i :IndentGuidesToggle<cr>

" toggle MUcomplete
nmap <leader>c :MUcompleteAutoToggle<cr>

" toggle MarkdownPreview
nmap <leader>m :MarkdownPreviewToggle<cr>

set termguicolors                " Enable GUI colors in the terminal
let &t_8f="\e[38;2;%lu;%lu;%lum" " sets foreground color (ANSI, true-color mode)
let &t_8b="\e[48;2;%lu;%lu;%lum" " sets background color (ANSI, true-color mode)

try
	colorscheme catppuccin_mocha
catch
	colorscheme ron
endtry

" auto complete big parantheses
inoremap { {}<Left>
inoremap {<cr> {<cr>}<Esc>O
inoremap {{ {

augroup compile_mapping
	autocmd!
	autocmd filetype *     nmap <F6> :source %:p:h/*.vim
	autocmd filetype *     nmap <F7> :term<cr>
	autocmd filetype *     nmap <F8> :!clear<cr><cr>
	autocmd filetype c     nmap <F9> :w <bar> !clang -std=c11 % -o %:r<cr>
	autocmd filetype cpp   nmap <F9> :w <bar> !clang++ -std=c++20 % -o %:r<cr>
	autocmd filetype c,cpp nmap <F10> :!time ./%:r<cr>
	autocmd FileType cpp nnoremap cpf i#include <bits/stdc++.h><cr>#define ll long long<cr>#define ull unsigned long long<cr>#define pii pair<int, int><cr>#define vi vector<int><cr>#define vii vector<pair<int, int>><cr>#define pqueue priority_queue<cr>#define pb push_back<cr>#define eb emplace_back<cr>#define ep emplace<cr>#define F first<cr>#define S second<cr>#define endl '\n'<cr>#define put(x) cout << x << '\n'<cr>#define all(v) v.begin(), v.end()<cr>#define MEM(x, n) memset(x, n, sizeof(x));<cr>#define lowbit(x) x & (-x)<cr>#define SZ(v) ((int)v.size())<cr>#ifdef LOCAL<cr>#pragma GCC optimize("Ofast,unroll-all-loops")<cr>#pragma GCC target("avx2,bmi,bmi2,lzcnt,popcnt")<cr>#endif<cr>using namespace std;<cr>constexpr int Inf = 0x7f7f7f7f;<cr>constexpr int Mod = 1e6 + 3;<cr>constexpr int mxn = 1e9 + 7;<cr>constexpr int d4[4][2] = {{0,-1},{-1,0},{1,0},{0,1}};<cr>constexpr int d8[8][2] = {{-1,-1},{0,-1},{1,-1},{-1,0},{1,0},{-1,1},{0,1},{1,1}};<cr>/******************************************************************************/<cr><cr>void sol() {<cr><cr>}<cr><cr>signed main(void){<cr>cin.tie(nullptr) -> sync_with_stdio(false);<cr>sol();<cr>return 0;<cr>}
augroup END

set nu
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

hi LineNr cterm=bold "ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold "ctermfg=Green ctermbg=NONE

" ====================================================== VIM-ALE CONFIG =======================================================

" === GLOBAL ===
let g:ale_set_quickfix=1                " So that we can use :copen command
let g:ale_completion_enabled=1	      	" Enable ALE's completion feature
let g:ale_sign_column_always=0	      	" Always show ALE sign column
let g:ale_linters_explicit=0	      		" Only use linters that are explicitly enabled
let g:ale_lint_on_enter=0			      	  " Do not run linting when opening a file
let g:ale_fix_on_save=0				        	" Automatically fix errors on save
let g:ale_lint_on_text_changed='normal' " Never run linting when editing the file
"let g:ale_sign_error=' '
"let g:ale_sign_warning=' '

" C/CPP Options
let g:ale_c_cc_options='-std=c11 -Wall -Wextra -Werror -Wno-unused-variable'
let g:ale_cpp_cc_options='-std=c++20 -Wall -Wextra -Werror -Wno-unused-variable'

" List of linters
let g:ale_linters = {
\   'c':      ['clang', 'gcc'],
\   'cpp':    ['clang', 'gcc'],
\   'python': ['flake8', 'pylint'],
\   'rust':		['analyzer'],
\   'java':		['javac', 'checkstyle'],
\}

" List of fixer
let g:ale_fixers = {
\   'c':	  	['clang-format'],
\   'cpp':		['clang-format'],
\   'python': ['autopep8', 'black'],
\   'rust':		['rustfmt'],
\   'java':		['google_java_format'],
\   '*':      ['remove_trailing_lines', 'trim_whitespace'],
\}

" Keybinds
nmap <leader>a :ALEToggle<cr>
nmap <leader>f :ALEFix<cr>
nmap <leader>l :ALELint<cr>
nmap <leader>n :ALENext<cr>
nmap <leader>p :ALEPrevious<cr>
"nmap <leader>C :copen<cr> " type is by hand and close it by ZZ

" =================================== CLANG-COMPLETE & MU-COMPLETE VIM SCRIPT CONFIG ==========================================
set noinfercase
set complete+=kspell "use dictionary words with spell check"
set completeopt-=preview "use <C-w>z or :pclose
set completeopt+=menuone,noselect
set shortmess+=c " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
set pumheight=15
let g:mucomplete#enable_auto_at_startup=1
let g:mucomplete#completion_delay=1
let g:clang_use_library=1
let g:clang_library_path='/usr/lib/llvm14/lib/libclang.so.14.0.6'
let g:clang_auto_select=1
let g:clang_close_preview=1
autocmd filetype c let g:clang_user_options='-std=c11'
autocmd filetype cpp let g:clang_user_options='-std=c++20'

" if there's an error, allow us to see it
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0

" Limit memory use
let g:clang_memory_percent=70

" Snippets
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_trailing_placeholder=1
let g:clang_complete_optional_args_in_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
