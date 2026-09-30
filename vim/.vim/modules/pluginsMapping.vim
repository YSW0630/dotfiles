" Remap <leader> key
let mapleader=" "

" === NERDTree ===
nnoremap <leader>e :NERDTreeToggle<cr>

" === UndoTree ===
nnoremap <leader>T :UndotreeToggle<cr>

" === Tagbar ===
nnoremap <leader>t :TagbarToggle<cr>

" === fzf.vim ===
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fg :Rg<cr>
nnoremap <leader>fc :Colors<cr>
nnoremap <leader>fh :History<cr>

" === Lsp Document Format ===
nnoremap <Leader>lf :LspDocumentFormat<cr>
vnoremap <Leader>lf :LspDocumentRangeFormat<cr>

" === MUcomplete ===
inoremap <c-n> <plug>(MUcompleteFwd)
inoremap <c-p> <plug>(MUcompleteBwd)
inoremap <silent> <plug>(MUcompleteFwdKey) <right>
inoremap <right> <plug>(MUcompleteCycFwd)
inoremap <silent> <plug>(MUcompleteBwdKey) <left>
inoremap <left> <plug>(MUcompleteCycBwd)

" === Find my-path.vim ===
nnoremap <leader>a :call AddMyPath#SourceMyPath()<cr>

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
