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

augroup compile_mapping
	autocmd!
	autocmd filetype *     nmap <F7> :term<cr>
	autocmd filetype *     nmap <F8> :!clear<cr><cr>
	autocmd filetype c     nmap <F9> :w <bar> !clang -std=gnu11 -lm % -o %:r<cr>
	autocmd filetype cpp   nmap <F9> :w <bar> !clang++ -std=c++20 % -o %:r<cr>
	autocmd filetype c,cpp nmap <F10> :!time ./%:r<cr>
	autocmd FileType cpp nnoremap cpf i#include <bits/stdc++.h><cr>#define ll long long<cr>#define ull unsigned long long<cr>#define pii pair<int, int><cr>#define vi vector<int><cr>#define vii vector<pair<int, int>><cr>#define pqueue priority_queue<cr>#define pb push_back<cr>#define eb emplace_back<cr>#define ep emplace<cr>#define F first<cr>#define S second<cr>#define endl '\n'<cr>#define put(x) cout << x << '\n'<cr>#define all(v) v.begin(), v.end()<cr>#define MEM(x, n) memset(x, n, sizeof(x));<cr>#define lowbit(x) x & (-x)<cr>#define SZ(v) ((int)v.size())<cr>#ifdef LOCAL<cr>#pragma GCC optimize("Ofast,unroll-all-loops")<cr>#pragma GCC target("avx2,bmi,bmi2,lzcnt,popcnt")<cr>#endif<cr>using namespace std;<cr>constexpr int Inf = 0x7f7f7f7f;<cr>constexpr int Mod = 1e6 + 3;<cr>constexpr int mxn = 1e9 + 7;<cr>constexpr int d4[4][2] = {{0,-1},{-1,0},{1,0},{0,1}};<cr>constexpr int d8[8][2] = {{-1,-1},{0,-1},{1,-1},{-1,0},{1,0},{-1,1},{0,1},{1,1}};<cr>/******************************************************************************/<cr><cr>void sol() {<cr><cr>}<cr><cr>signed main(void){<cr>cin.tie(nullptr) -> sync_with_stdio(false);<cr>sol();<cr>return 0;<cr>}
augroup END
