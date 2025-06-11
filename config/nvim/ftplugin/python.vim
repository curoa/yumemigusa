" debug
nnoremap <buffer> <space>dl ^"aDaprint('<c-r>a', <c-r>a) # debug
nnoremap <buffer> <space>dp yypkIprint('<esc>A') # debug<esc>jIprint(<esc>A) # debug<esc>
nnoremap <buffer> <space>do yypkIprint('<esc>A') # debug<esc>jIpp(<esc>A) # debug<esc>
cnoremap <buffer> co^ %s/^\(\s\+\)\([^#[:blank:]].\+\) # debug$/\1#\2 # debug/
cnoremap <buffer> ci^ %s/^\(\s\+\)#\(.\+\) # debug$/\1\2 # debug/

" comment
inoremap <buffer> @@ #
nnoremap <buffer> <space>co I#<esc>
nnoremap <buffer> <space>ci ^x
nnoremap <buffer> <space>ca A #
nnoremap <buffer> <space>cb o"""<esc>
nnoremap <buffer> <space>ce O#"""<esc>

" loop
inoremap <buffer> fo^ <esc>Ifor i in <esc>A:<esc>^ws
inoremap <buffer> en^ <esc>Ifor i in enumerate(<esc>A):<esc>^ws
inoremap <buffer> zi^ <esc>Ifor i in zip(<esc>A):<esc>^ws
inoremap <buffer> ze^ <esc>Ifor i, () in enumerate(zip(<esc>A)):<esc>^f(a
inoremap <buffer> ez^ <esc>Ifor i, () in enumerate(zip(<esc>A)):<esc>^f(a
inoremap <buffer> rn^ <esc>Ifor i in range(<esc>A):<esc>^ws

" if
inoremap <buffer> if^ <esc>Iif <esc>A:<esc>i
inoremap <buffer> sc^ <esc>Imatch value:<cr>case 1:<cr>pass<cr>case _:<cr>pass<esc>

" short
inoremap <buffer> s^ self
inoremap <buffer> ap^ append
inoremap <buffer> n^ None
inoremap <buffer> t^ True
inoremap <buffer> f^ False
inoremap <buffer> con^ continue
inoremap <buffer> rev^ reversed
inoremap <buffer> sm^ staticmethod
inoremap <buffer> cm^ classmethod

inoremap <buffer> ++ <space>+= 1
inoremap <buffer> -- <space>-= 1

" format
nnoremap <buffer> == ^"aD"sddko<c-r>a<esc>

" move
nnoremap <buffer> ( k:let @s = @/ \| :let @/ = "^\\s*def "<cr>N:let @/ = @s \| noh<cr>t(
nnoremap <buffer> ) :let @s = @/ \| :let @/ = "^\\s*def "<cr>n:let @/ = @s \| noh<cr>t(
nnoremap <buffer> <c-]> "ayiw/\(def\\|class\) <c-r>a<cr>:noh<cr>t(

" macro
nmap <buffer> <space>d^ f(bd0f(%C):<cr><esc>k==Idef <esc>o
inoremap <buffer> pd^ pickle.dump(obj, open(fpath, "wb"))
inoremap <buffer> pl^ if os.path.exists(fpath):<cr>obj = pickle.load(open(fpath, "rb"))

" util
cnoremap <buffer> ch^ tabe ~/cheetsheet/python/mypyutil/
