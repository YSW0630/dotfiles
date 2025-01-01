"   __  ___    _   ___       _____          ___
"   /  |/  /_ _| | / (_)_ _  / ___/__  ___  / _/
"  / /|_/ / // / |/ / /  ' \/ /__/ _ \/ _ \/ _/
" /_/  /_/\_, /|___/_/_/_/_/\___/\___/_//_/_/
"        /___/
"
" Start some plugins
call plug#begin('~/.vim/plugged')
" Themes
Plug 'catppuccin/vim', {'as': 'catppuccin-theme'}
Plug 'tomasiser/vim-code-dark', {'as': 'vscode-theme'}
Plug 'dracula/vim', {'as': 'dracula-theme'}
Plug 'YSW0630/molokai-matchOrange', {'as': 'MyMolokai-theme'}
Plug 'nordtheme/vim', {'as': 'nord-theme'}
" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'xavierd/clang_complete'
Plug 'lifepillar/vim-mucomplete'
Plug 'davidhalter/jedi-vim' " If python-jedi has installed
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' } " If nodejs and yarn have installed
call plug#end()

" Set airline theme
let g:airline_theme='deus' " 'deus' 'dark' 'simple' 'minimalist' 'term' 'jet' 'google_dark' 'molokai' 'base16_seti' 'base16_dracula'

" Toggle NERDTree
nmap <leader>e :NERDTreeToggle<cr>

" Toggle UndoTree
nmap <leader>T :UndotreeToggle<cr>

" Toggle Tagbar
nmap <leader>t :TagbarToggle<cr>

" Toggle Indent Guide
let g:indent_guides_enable_on_vim_startup=1
nmap <leader>i :IndentGuidesToggle<cr>

" Toggle MarkdownPreview
nmap <leader>m :MarkdownPreviewToggle<cr>

" mapping MUcomplete
imap <c-j> <plug>(MUcompleteFwd)
imap <c-k> <plug>(MUcompleteBwd)
inoremap <silent> <plug>(MUcompleteFwdKey) <right>
imap <right> <plug>(MUcompleteCycFwd)
inoremap <silent> <plug>(MUcompleteBwdKey) <left>
imap <left> <plug>(MUcompleteCycBwd)

" mapping fzf.vim
nmap <leader>ff :Files<cr>
nmap <leader>fb :Buffers<cr>
nmap <leader>fg :Rg<cr>
nmap <leader>fc :Colors<cr>
nmap <leader>fh :History<cr>

if has("termguicolors")
	let &t_8f="\e[38;2;%lu;%lu;%lum" " sets foreground color (ANSI, true-color mode)
	let &t_8b="\e[48;2;%lu;%lu;%lum" " sets background color (ANSI, true-color mode)
	set termguicolors	               " Enable GUI colors in the terminal
endif

try
	colorscheme dracula
catch
	colorscheme torte
endtry

" auto complete big parantheses
inoremap { {}<Left>
inoremap {<cr> {<cr>}<Esc>O
inoremap {{ {

augroup compile_mapping
	autocmd!
	autocmd filetype *     nmap <F7> :term<cr>
	autocmd filetype *     nmap <F8> :!clear<cr><cr>
	autocmd filetype c     nmap <F9> :w <bar> !clang -std=c11 -lm % -o %:r<cr>
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

" VIM-ALE CONFIGURATION
let g:ale_set_quickfix=1                " So that we can use :copen command
let g:ale_completion_enabled=1	      	" Enable ALE's completion feature
let g:ale_sign_column_always=0	      	" Always show ALE sign column
let g:ale_linters_explicit=0	      		" Only use linters that are explicitly enabled
let g:ale_lint_on_enter=0			      	  " Do not run linting when opening a file
let g:ale_fix_on_save=0				        	" Automatically fix errors on save
let g:ale_lint_on_text_changed='normal' " Never run linting when editing the file
"let g:ale_sign_error='E'
"let g:ale_sign_warning='W'

" C/CPP Options
let g:ale_c_cc_options='-std=c11 -Wall -Wextra -Werror -Wno-unused-variable'
let g:ale_cpp_cc_options='-std=c++20 -Wall -Wextra -Werror -Wno-unused-variable'

" Python Options
let g:python3_host_prog='/usr/bin/python3'

" Rust Options
let g:rust_recommended_style=v:false

" List of linters
let g:ale_linters={
\   'c':      ['clang', 'gcc'],
\   'cpp':    ['clang', 'gcc'],
\   'cmake':  ['cmakelint'],
\   'python': ['flake8', 'pylint'],
\   'rust':		['analyzer'],
\}

" List of fixer
let g:ale_fixers={
\   'c':	  	['clang-format'],
\   'cpp':		['clang-format'],
\   'cmake':  ['cmakeformat'],
\   'python': ['autopep8', 'black'],
\   'rust':		['rustfmt'],
\   '*':      ['remove_trailing_lines', 'trim_whitespace'],
\}

" Keybinds
nmap <leader>aa :ALEToggle<cr>
nmap <leader>af :ALEFix<cr>
nmap <leader>al :ALELint<cr>
nmap <leader>an :ALENext<cr>
nmap <leader>ap :ALEPrevious<cr>

" CLANG-COMPLETE & MU-COMPLETE CONFIGURATION
let g:mucomplete#enable_auto_at_startup=1
let g:mucomplete#completion_delay=1
let g:clang_use_library=1
let g:clang_auto_select=1
let g:clang_close_preview=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_library_path='/usr/lib/llvm14/lib/libclang.so.14.0.6'
let g:clang_auto_user_options='.clang_complete, path, compile_commands.json'

" Snippets
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_trailing_placeholder=1
let g:clang_complete_optional_args_in_snippets=1
autocmd filetype c,cpp setlocal conceallevel=2    " hide concealed text completely unless replacement character is defined
autocmd filetype c,cpp setlocal concealcursor=vin " conceal in insert (i), normal (n) and visual (v) modes
