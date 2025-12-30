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

" Mapping MUcomplete
imap <c-n> <plug>(MUcompleteFwd)
imap <c-p> <plug>(MUcompleteBwd)
inoremap <silent> <plug>(MUcompleteFwdKey) <right>
imap <right> <plug>(MUcompleteCycFwd)
inoremap <silent> <plug>(MUcompleteBwdKey) <left>
imap <left> <plug>(MUcompleteCycBwd)

" Find my-path.vim 
nmap <leader>a :call AddMyPath#SourceMyPath()<cr>

" asyncomplete.vim
"inoremap <expr> <c-j>   pumvisible() ? "\<c-n>" : "\<c-j>"
"inoremap <expr> <c-k>   pumvisible() ? "\<c-p>" : "\<c-k>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
