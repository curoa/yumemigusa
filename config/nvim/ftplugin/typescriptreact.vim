" debug
nnoremap <buffer> <space>dl Iconsole.log(<esc>A);
nnoremap <buffer> ( k:let @s = @/ \| :let @/ = " function "<cr>N:let @/ = @s \| noh<cr>t(
nnoremap <buffer> ) :let @s = @/ \| :let @/ = " function "<cr>n:let @/ = @s \| noh<cr>t(

" short
inoremap <buffer> .^ <esc>ciw<<c-r>"></<c-r>">
inoremap <buffer> ,^ <esc>ciw<<c-r>" />
inoremap <buffer> _d^ <esc>Ifunction <esc>A () {<cr>}<esc>kf(a

inoremap <buffer> t^ true
inoremap <buffer> f^ false
inoremap <buffer> n^ null

" if
inoremap if^ if () {<cr>}<esc>kf(a

" move
nnoremap <buffer> ( k:let @s = @/ \| :let @/ = "^\\s*function "<cr>N:let @/ = @s \| noh<cr>t(
nnoremap <buffer> ) :let @s = @/ \| :let @/ = "^\\s*function "<cr>n:let @/ = @s \| noh<cr>t(
