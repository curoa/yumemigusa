nnoremap <buffer> <space>d yypkIprint("<esc>A") #debug<esc>jIprint(<esc>A) # debug<esc>
nnoremap <buffer> <space>e ^"aDaprint("<c-r>a", <c-r>a) # debug

inoremap <buffer> fo^ <esc>Ifor i in <esc>A:<esc>^ws

inoremap <buffer> ap^ append
inoremap <buffer> n^ None
inoremap <buffer> con^ continue

inoremap <buffer> ++ <space>+= 1
inoremap <buffer> -- <space>-= 1

nnoremap <buffer> == ^"aD"sddko<c-r>a<esc>

nmap <buffer> _d^ f(bd0f)C):<esc>==Idef <esc>o
