nnoremap <space>d yypkIprint("<esc>A") #debug<esc>jIprint(<esc>A) # debug<esc>
inoremap fo^ <esc>Ifor i in <esc>A:<esc>^ws
inoremap ap^ append
inoremap n^ None
inoremap ++ <space>+= 1
inoremap -- <space>-= 1
nnoremap == ^"aD"sddko<c-r>a<esc>
nmap _d^ f(bd0f)C):<esc>==Idef <esc>o
