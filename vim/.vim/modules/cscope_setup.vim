" ~/.vim/modules/cscope_setup.vim
"
" Ctags & Cscope Configuration
function! cscope_setup#SetupCscope()
	set tags+=tags;~,TAGS;~

	" Cscope Configuration
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
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

	if has("cscope")
		if filereadable("cscope.out")
			cs add cscope.out
		else
			let cscope_file=findfile("cscope.out", ".;")
			let cscope_pre=matchstr(cscope_file, ".*/")
			if !empty(cscope_file) && filereadable(cscope_file)
				exe "cs add" cscope_file cscope_pre
			endif
		endif
	endif
endfunction
