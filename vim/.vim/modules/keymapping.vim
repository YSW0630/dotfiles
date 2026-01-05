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
  autocmd FileType *     nnoremap <buffer> <F7>  :term<CR>
  autocmd FileType *     nnoremap <buffer> <F8>  :!clear<CR><CR>
  autocmd FileType c     nnoremap <buffer> <F9>  :w <bar> !clang -DLOCAL -std=gnu11 -lm % -o %:r<CR>
  autocmd FileType cpp   nnoremap <buffer> <F9>  :w <bar> !clang++ -DLOCAL -std=c++20 % -o %:r<CR>
  autocmd FileType c,cpp nnoremap <buffer> <F10> :!time ./%:r<CR>
augroup END
