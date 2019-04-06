if has("cscope")
	set csprg=/usr/local/bin/cscope
  set cscopetag
	set csto=0
	set cst
	set nocsverb
  set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
  "open quickfix window
  nmap <leader>o :copen<CR>
  "close quickfix window
  nmap <leader>x :cclose<CR>
  "find this C symbol
	nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  "find this global definition
	nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  "find functions calling this function
	nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  "find this text string
	nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  "find this egrep pattern
	nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  "find this file
	nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  "find files including this file
	nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  "find functions called by this function
	nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
  "find assignments to this symbol
	nmap <leader>a :cs find a <C-R>=expand("<cword>")<CR><CR>
endif
