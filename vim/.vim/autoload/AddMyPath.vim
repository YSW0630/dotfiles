" Written in 2025 1/13 by pacfrog
"
" Location : $HOME/.vim/autoload/FindMyPath.vim

function! AddMyPath#SourceMyPath()
	highlight Success ctermfg=Green cterm=bold
	highlight Failure ctermfg=Red cterm=bold
	let l:current_dir = expand('%:p:h')
	let l:custom_filename = 'my-path.vim'
	let l:found = 0

	while l:current_dir != '/'
		let l:target_file = l:current_dir .. '/' .. l:custom_filename
		if filereadable(l:target_file)
			" fnameescape can precede a '\' special character.
			echohl Success
			echom "Sourced " .. l:custom_filename
			execute 'source' fnameescape(l:target_file)
			let l:found = 1 " update the flag
			break
		endif
		
		" fnamemodify can put :h, :r, :t... followed by the original path then
		" return the result.
		let l:current_dir = fnamemodify(l:current_dir, ':h')
	endwhile

	" check the flag 
	if l:found == 0
		echohl Failure
		echom l:custom_filename .. " not found!"
	endif
  echohl None
endfunction
