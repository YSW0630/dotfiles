" set airline theme
let g:airline_theme='deus' " 'jet' 'luna' 'molokai' 'base16_seti' 'base16_dracula'

" let SuperTab choose reverse words
let g:SuperTabDefaultCompletionType="<c-n>"

" toggle NERDTree
nnoremap <leader>e :NERDTreeToggle<cr>

" toggle tagbar
nnoremap <leader>t :TagbarToggle<cr>

" toggle Ale
let g:ale_enabled = 0
nnoremap <leader>a :ALEToggle<cr>

" toggle Clang Format
nnoremap <leader>f :ClangFormat<cr>

let &t_8f = "\e[38;2;%lu;%lu;%lum" " sets foreground color (ANSI, true-color mode)
let &t_8b = "\e[48;2;%lu;%lu;%lum" " sets background color (ANSI, true-color mode)
set termguicolors

" auto complete big parantheses 
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {

autocmd filetype *   nnoremap <F8> :!clear<CR><CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !clang++ -std=c++20 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!time ./%:r<CR>
autocmd FileType cpp nnoremap cpf i#pragma GCC optimize("Ofast,unroll-all-loops")<Esc>o#pragma GCC target("avx2,bmi,bmi2,lzcnt,popcnt")<Esc>o#include <bits/stdc++.h><Esc>o#define ll long long<Esc>o#define ull unsigned long long<Esc>o#define pii pair<int, int><Esc>o#define vi vector<int><Esc>o#define vii vector<pair<int, int>><Esc>o#define pqueue priority_queue<Esc>o#define pb push_back<Esc>o#define eb emplace_back<Esc>o#define ep emplace<Esc>o#define F first<Esc>o#define S second<Esc>o#define endl '\n'<Esc>o#define put(x) cout << x << '\n'<Esc>o#define all(v) v.begin(), v.end()<Esc>o#define MEM(x, n) memset(x, n, sizeof(x));<Esc>o#define lowbit(x) x & (-x)<Esc>o#define SZ(v) ((int)v.size())<Esc>ousing namespace std;<Esc>oconstexpr int Inf = 0x7f7f7f7f;<Esc>oconstexpr int Mod = 1e6 + 3;<Esc>oconstexpr int mxn = 1e9 + 7;<Esc>oconstexpr int d4[4][2] = {{0,-1},{-1,0},{1,0},{0,1}};<Esc>oconstexpr int d8[8][2] = {{-1,-1},{0,-1},{1,-1},{-1,0},{1,0},{-1,1},{0,1},{1,1}};<Esc>o/******************************************************************************/<Esc>o<CR>void sol() {<Esc>o<Esc>o}<Esc>o<CR>signed main(void){<CR>ios_base::sync_with_stdio(false);<CR>cin.tie(nullptr);<CR>sol();<CR>return 0;<Esc>o}

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

" =================================== CLANG-COMPLETE VIM SCRIPT CONFIG ==========================================
let g:clang_use_library=1
let g:clang_library_path='/usr/lib/llvm14/lib/libclang.so.14.0.6'
let g:clang_auto_select=1
let g:clang_close_preview=1

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
" ===============================================================================================================

" =================================== AutoComplPop VIM SCRIPT CONFIG ==========================================
set complete+=kspell "use dictionary words with spell check"
set completeopt+=menuone,menu,longest
"set completeopt-=preview
set shortmess+=c
set pumheight=15
" ===============================================================================================================
