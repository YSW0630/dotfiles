try
  colorscheme dracula
catch
  colorscheme ron
endtry

set ai
set ci
set si
syntax on
set ruler
set mouse=a
set cb=unnamed
set t_Co=256
set bg=dark
set cursorline
set ignorecase
set hlsearch
set incsearch
set nofoldenable
set nocompatible
set noexpandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
set showtabline=2
set splitbelow
set splitright
filetype on
filetype indent on
filetype plugin on
inoremap jk <Left><C-[>
inoremap jj <Left><C-[>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
let g:netrw_banner = 0
autocmd filetype *   nnoremap <F7> :w <bar> !clang-format -style=LLVM -i %<CR>L
autocmd filetype *   nnoremap <F8> :!clear<CR><CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!time ./%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd FileType cpp nnoremap cpf i#pragma GCC optimize("Ofast,unroll-all-loops")<Esc>o#pragma GCC target("avx2,bmi,bmi2,lzcnt,popcnt")<Esc>o#include <bits/stdc++.h><Esc>o#define ll long long<Esc>o#define ull unsigned long long<Esc>o#define pii pair<int, int><Esc>o#define vi vector<int><Esc>o#define vii vector<pair<int, int>><Esc>o#define pqueue priority_queue<Esc>o#define pb push_back<Esc>o#define eb emplace_back<Esc>o#define ep emplace<Esc>o#define F first<Esc>o#define S second<Esc>o#define endl '\n'<Esc>o#define put(x) cout << x << '\n'<Esc>o#define all(v) v.begin(), v.end()<Esc>o#define MEM(x, n) memset(x, n, sizeof(x));<Esc>o#define lowbit(x) x & (-x)<Esc>o#define SZ(v) ((int)v.size())<Esc>ousing namespace std;<Esc>oconstexpr int Inf = 0x7f7f7f7f;<Esc>oconstexpr int Mod = 1e6 + 3;<Esc>oconstexpr int mxn = 1e9 + 7;<Esc>oconstexpr int d4[4][2] = {{0,-1},{-1,0},{1,0},{0,1}};<Esc>oconstexpr int d8[8][2] = {{-1,-1},{0,-1},{1,-1},{-1,0},{1,0},{-1,1},{0,1},{1,1}};<Esc>o/******************************************************************************/<Esc>o<CR>void sol() {<Esc>o<Esc>o}<Esc>o<CR>signed main(void){<CR><tab>ios_base::sync_with_stdio(false);<CR><tab>cin.tie(0);<CR><tab>cout.tie(0);<CR><tab>sol();<CR><tab>return 0;<Esc>o}

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'
let g:clang_auto_select=1
let g:clang_complete_copen=1
let g:clang_close_preview=1
set completeopt-=preview
