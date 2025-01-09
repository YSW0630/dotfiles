" ~/.vim/autoload/cscope_setup.vim
"
" Ctags & Cscope Configuration
function! cscope_setup#SetupCscope()
	set tags=./tags,./TAGS,tags;~,TAGS;~
	if has("cscope")
		set csprg=/usr/bin/cscope
		set csto=1
		set cst
		set csverb
		set cscopequickfix=s-,c-,d-,i-,t-,e-

		if filereadable("cscope.out")
			cs add cscope.out
		else
			let cscope_file=findfile("cscope.out", ".;")
			let cscope_pre=matchstr(cscope_file, ".*/")
			if !empty(cscope_file) && filereadable(cscope_file)
				exe "cs add" cscope_file cscope_pre
			endif
		endif

		nmap <leader>cn :cnext<CR>
		nmap <leader>cp :cprev<CR>
		nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
		nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
		nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
		nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
	endif
endfunction
