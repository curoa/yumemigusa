" debug
nnoremap <buffer> <space>dl Iconsole.log(<esc>A);
nnoremap <buffer> ( k:let @s = @/ \| :let @/ = " function "<cr>N:let @/ = @s \| noh<cr>t(
nnoremap <buffer> ) :let @s = @/ \| :let @/ = " function "<cr>n:let @/ = @s \| noh<cr>t(

inoremap <buffer> t^ <esc>ciw<<c-r>"><<c-r>"/>
