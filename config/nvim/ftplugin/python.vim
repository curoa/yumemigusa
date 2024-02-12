" debug
nnoremap <buffer> <space>dl ^"aDaprint('<c-r>a', <c-r>a) # debug
nnoremap <buffer> <space>dp yypkIprint('<esc>A') # debug<esc>jIprint(<esc>A) # debug<esc>
nnoremap <buffer> <space>do yypkIprint('<esc>A') # debug<esc>jIpp(<esc>A) # debug<esc>

" loop
inoremap <buffer> fo^ <esc>Ifor i in <esc>A:<esc>^ws
inoremap <buffer> en^ <esc>Ifor i in enumerate(<esc>A):<esc>^ws
inoremap <buffer> zi^ <esc>Ifor i in zip(<esc>A):<esc>^ws
inoremap <buffer> rn^ <esc>Ifor i in range(<esc>A):<esc>^ws

" short
inoremap <buffer> s^ self
inoremap <buffer> ap^ append
inoremap <buffer> n^ None
inoremap <buffer> t^ True
inoremap <buffer> f^ False
inoremap <buffer> con^ continue
inoremap <buffer> pd^ pickle.dump(obj, open(fpath, "wb"))
inoremap <buffer> pl^ if os.path.exists(fpath):<cr>obj = pickle.load(open(fpath, "rb"))

inoremap <buffer> ++ <space>+= 1
inoremap <buffer> -- <space>-= 1

" format
nnoremap <buffer> == ^"aD"sddko<c-r>a<esc>

cnoremap <buffer> co^ %s/^\(\s\+\)\([^#[:blank:]].\+\) # debug$/\1#\2 # debug/
cnoremap <buffer> ci^ %s/^\(\s\+\)#\(.\+\) # debug$/\1\2 # debug/

" move
nnoremap <buffer> ( k:let @s = @/ \| :let @/ = "^\\s*def "<cr>N:let @/ = @s \| noh<cr>t(
nnoremap <buffer> ) :let @s = @/ \| :let @/ = "^\\s*def "<cr>n:let @/ = @s \| noh<cr>t(

" macro
nmap <buffer> _d^ f(bd0f(%C):<cr><esc>k==Idef <esc>o

" util
cnoremap <buffer> ch^ ~/cheetsheet/python/
