" Yank to End of Line
nnoremap Y y$

" Exit Mappings (Use <C-[> instead)
inoremap jk <Esc>
inoremap jj <Esc>

" Auto Complete Big Parantheses
inoremap { {}<Left>
inoremap {<cr> {<cr>}<Esc>O
inoremap {{ {

" Shift Line Mappings
nnoremap <S-PageUp> :m-2<CR>
nnoremap <S-PageDown> :m+<CR>
inoremap <S-PageUp> <Esc>:m-2<CR>i
inoremap <S-PageDown> <Esc>:m+<CR>i

augroup compile_mapping
	autocmd!
	autocmd filetype *     nmap <F7> :term<cr>
	autocmd filetype *     nmap <F8> :!clear<cr><cr>
	autocmd filetype c     nmap <F9> :w <bar> !clang -DLOCAL -std=gnu11 -lm % -o %:r<cr>
	autocmd filetype cpp   nmap <F9> :w <bar> !clang++ -DLOCAL -std=c++20 % -o %:r<cr>
	autocmd filetype c,cpp nmap <F10> :!time ./%:r<cr>
augroup END
