" === NERDTree ===
nmap <leader>e :NERDTreeToggle<cr>

" === UndoTree ===
nmap <leader>T :UndotreeToggle<cr>

" === Tagbar ===
nmap <leader>t :TagbarToggle<cr>

" === fzf.vim ===
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fg :Rg<cr>
nnoremap <leader>fc :Colors<cr>
nnoremap <leader>fh :History<cr>

" === vim-smooth-scroll ===
" The following 3 parameters: 'Distance', 'Duration', 'Speed'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

" === Lsp Document Format ===
nnoremap <buffer><Leader>F :LspDocumentFormat<cr>
vnoremap <buffer><Leader>F :LspDocumentRangeFormat<cr>

" === MUcomplete ===
imap <c-n> <plug>(MUcompleteFwd)
imap <c-p> <plug>(MUcompleteBwd)
inoremap <silent> <plug>(MUcompleteFwdKey) <right>
imap <right> <plug>(MUcompleteCycFwd)
inoremap <silent> <plug>(MUcompleteBwdKey) <left>
imap <left> <plug>(MUcompleteCycBwd)

" === Find my-path.vim ===
nmap <leader>a :call AddMyPath#SourceMyPath()<cr>

" === Asyncomplete.vim ===
" Check if cursor is at whitespace or line start
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Manually trigger completion
inoremap <silent><expr> <c-j>
  \ pumvisible() ? "\<c-n>" :
  \ <SID>check_back_space() ? "\<c-j>" :
  \ asyncomplete#force_refresh()
inoremap <expr><c-k> pumvisible() ? "\<c-p>" : "\<c-h>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" Legacy auto-popup mappings (disabled, kept for reference)
"inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" === Ultisnips ===
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
