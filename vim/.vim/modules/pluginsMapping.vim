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
autocmd FileType c,cpp nnoremap <buffer><Leader>F :<C-u>ClangFormat<cr>
autocmd FileType c,cpp vnoremap <buffer><Leader>F :ClangFormat<cr>

" Mapping MUcomplete
imap <c-j> <plug>(MUcompleteFwd)
imap <c-k> <plug>(MUcompleteBwd)
inoremap <silent> <plug>(MUcompleteFwdKey) <right>
imap <right> <plug>(MUcompleteCycFwd)
inoremap <silent> <plug>(MUcompleteBwdKey) <left>
imap <left> <plug>(MUcompleteCycBwd)

" Find my-path.vim 
nmap <leader>a :call AddMyPath#SourceMyPath()<cr>
