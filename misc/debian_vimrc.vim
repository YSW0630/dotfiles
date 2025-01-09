"  _  __(_)_ _  ________
" | |/ / /  ' \/ __/ __/
" |___/_/_/_/_/_/  \__/ 
"
" Configuration

" Appearance and Interface
set background=dark        " Use dark background color scheme
set cursorline             " Highlight current line
set nocursorcolumn         " Highlight current column
set laststatus=2           " Always display the status line
set ruler                  " Show cursor position
set showcmd                " Display typed command in the bottom right
set showtabline=2          " Always show tab bar
set splitbelow             " Horizontal splits open below current window
set splitright             " Vertical splits open to the right
set wildmenu               " Enhanced command-line completion

" Clipboard and Shell
set clipboard=unnamedplus  " Use system clipboard
set shell=/bin/bash        " Set shell to /bin/zsh

" Completion Options
set pumheight=10           " Set popup menu height for completion to 15 lines
set complete+=kspell       " Use dictionary words with spell check"
set completeopt=menu,menuone,noselect,preview "popup

" Cursor and Highlighting
set hlsearch               " Highlight search results
set incsearch              " Incremental search
set lazyredraw             " Improves performance when running macros
set mouse=a                " Enable mouse in all modes

" Editing and Indentation
set autoindent             " Auto-indent new lines
set autoread               " Reload files changed outside Vim
set cindent                " C-style indentation
set smarttab               " Insert shiftwidth spaces with <Tab>
set smartcase              " Case-sensitive search when using uppercase
set tabstop=2              " Number of spaces for <Tab>
set shiftwidth=2           " Indent size
set softtabstop=2          " Spaces per <Tab> when editing
set noexpandtab            " Use actual tab character
set wrap                   " Wrap long lines
set linebreak              " Wrap lines at word boundaries

" File and Buffer Management
set hidden                 " Allow switching buffers without saving
set history=100            " Command history size
set nofoldenable           " Disable code folding by default
set report=0               " Always show change reports

" Regex and Search
set magic                  " Use extended regex
set regexpengine=1         " Use old regex engine
set ignorecase             " Case-insensitive search
set wildignorecase         " Case-insensitive file completion
set wrapscan               " Wrap search around file

" Notifications and Bells
set noerrorbells           " Disable error bells
set novisualbell           " Disable Visual flash

" Mode and Behavior
set gdefault               " Global flag for substitutions
set nostartofline          " Maintain cursor column when jumping
set timeout                " Enable mapped sequence timeout
set timeoutlen=400         " Timeout length in ms
set virtualedit=block      " Allow free cursor movement in visual block mode

" Scrolling and View
set scrolloff=10           " Start scrolling 10 lines before edge
set sidescrolloff=0        " No side scrolling offset

" Undo Memory
set undodir=~/.vim/undodir
set undofile

" File Type Detection and Plugins
filetype on                " Enable file type detection
filetype plugin indent on  " Load file type plugins with indentation
syntax enable              " Enable syntax highlighting

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

" Exit Mappings
inoremap jk <Esc>
inoremap jj <Esc>

" Shift Line Mappings
nnoremap <S-PageUp> :m-2<CR>
nnoremap <S-PageDown> :m+<CR>
inoremap <S-PageUp> <Esc>:m-2<CR>i
inoremap <S-PageDown> <Esc>:m+<CR>i

" Yank to End of Line
nnoremap Y y$

" Auto Complete Big Parantheses
inoremap { {}<Left>
inoremap {<cr> {<cr>}<Esc>O
inoremap {{ {

" Enable Cscope
command! EnableCscope call cscope_setup#SetupCscope()
"nnoremap <leader>c :call cscope_setup#SetupCscope()<CR>

" Remember Last Cursor Position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

augroup compile_mapping
	autocmd!
	autocmd filetype *     nmap <F7> :term<cr>
	autocmd filetype *     nmap <F8> :!clear<cr><cr>
	autocmd filetype c     nmap <F9> :w <bar> !clang -std=gnu11 -lm % -o %:r<cr>
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

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'YSW0630/Shorter_clang_complete'
Plug 'lifepillar/vim-mucomplete'
call plug#end()

" Toggle NERDTree
nmap <leader>e :NERDTreeToggle<cr>

" Toggle UndoTree
nmap <leader>T :UndotreeToggle<cr>

" Toggle Tagbar
nmap <leader>t :TagbarToggle<cr>

" Mapping fzf.vim
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fg :Rg<cr>
nnoremap <leader>fc :Colors<cr>
nnoremap <leader>fh :History<cr>

" Mapping Clang-format
autocmd FileType c,cpp nnoremap <buffer><Leader>F :<C-u>ClangFormat<CR>
autocmd FileType c,cpp vnoremap <buffer><Leader>F :ClangFormat<CR>

" Mapping MUcomplete
imap <c-j> <plug>(MUcompleteFwd)
imap <c-k> <plug>(MUcompleteBwd)
inoremap <silent> <plug>(MUcompleteFwdKey) <right>
imap <right> <plug>(MUcompleteCycFwd)
inoremap <silent> <plug>(MUcompleteBwdKey) <left>
imap <left> <plug>(MUcompleteCycBwd)

" Clang-complete & Mucomplete Configuration
let g:mucomplete#enable_auto_at_startup=1
let g:mucomplete#completion_delay=1
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
