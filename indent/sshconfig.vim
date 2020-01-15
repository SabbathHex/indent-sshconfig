" Vim indent file
" Language:     sshconfig
" Maintainer:	SabbathHex

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
		finish
endif
let b:did_indent = 1

setlocal indentexpr=GetSSHConfigIndent()
setlocal autoindent

" Only define the function once.
if exists("*GetSSHConfigIndent")
		finish
endif

function! GetSSHConfigIndent()
		" implements a trivial indentation
		" every line starting with "Host" word - has 0 indent
		" else, unless the line is emtpy, it's 4 indent
		let curline = getline(v:lnum)
		echo curline
		if curline =~ '^\s*Host\s'
				return 0
		endif
		if curline =~ '^\s*$'
				return 0
		endif
		return 4

endfunction
