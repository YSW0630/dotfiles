" Written in 2025 4/13 by pacfrog
"
" Location : $HOME/.vim/autoload/cscope_setup.vim

function! cscope_setup#Init()
  highlight Success ctermfg=Green cterm=bold
  highlight Failure ctermfg=Red cterm=bold
  let l:found = 0

  if filereadable("cscope.out")
    cs add cscope.out
    let l:found = 1 " update the flag
  else
    let cscope_file=findfile("cscope.out", ".;")
    let cscope_pre=matchstr(cscope_file, ".*/")
    if !empty(cscope_file) && filereadable(cscope_file)
      exe "cs add" cscope_file cscope_pre
      let l:found = 1 " update the flag
    endif
  endif

	if l:found
    echohl Success
    echom "Sourced cscope.out!"
  else
		echohl Failure
		echom "cscope.out not found!"
    return 
  endif
  echohl None	

  set csprg=/usr/bin/cscope " Set the path to the cscope executable
  set cst                   " Use cscope for tag commands 
  set csto=0                " Set the maximum number of cscope connections to 0 (unlimited)
  set csverb
  set cscopequickfix=s-,c-,d-,i-,t-,e-
  nnoremap <leader>cn :cnext<CR>
  nnoremap <leader>cp :cprev<CR>
  nnoremap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endfunction
