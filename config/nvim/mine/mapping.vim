" file opration
nnoremap <space>q :q!<cr>
nnoremap <space>w :wq<cr>
nnoremap <space>a :wqa<cr>
command! Mine tabe ~/.config/nvim/init.lua
command! Remine source ~/.config/nvim/init.lua 
try " ignore 'Rexplore is not exists' Error raised when 2nd delcommand
	delcommand Rexplore " delete Rexplore to make easier type Remine
catch
endtry
"cnoremap mine^ tabe ~/.config/nvim<cr>9j
cnoremap %% %:h
nnoremap gm :wa \| !echo -e '\e[38;5;0m\e[48;5;51m --- make ---  \e[m'; make -j
nnoremap <space>f :wa \| tabe \| terminal echo -e '\e[38;5;0m\e[48;5;51m --- exec ---  \e[m';./exec.sh<cr><cr>
nnoremap <space>s :wa \| sh


" tab
cnoremap tb tabe 
" 3gt ... move to 3th tab
nnoremap gb gT
" :tabm 3 ... move current tab 3th
" 下2行で閉じたタブを再度開く
autocmd QuitPre * let @r = @%
cabbr tr tabe <c-r>r
nnoremap gf <c-w>gF
nnoremap <c-w>gf yaW:tabe <c-r>"<cr>


" search
nnoremap <esc><esc> :noh<cr>
" no move when star search
nnoremap * :let @/="\\<<c-r><c-w>\\>" \| set hlsearch<cr>
noremap g* :let @/="<c-r><c-w>" \| set hlsearch<cr>


" copy paste
nnoremap qy qqq:g//y Q<cr>
nnoremap qp "qp
nnoremap Y y$
nnoremap <c-c> :1,$y +<cr>
nnoremap gy :let @y=@0<cr>
nnoremap gp "yp
nnoremap gP "yP
" `sudo apt install xclip`
set clipboard=
nnoremap <c-p> "+p
nnoremap <c-y> :let @+ = @0<cr>
" paste previous deleted
inoremap <c-d> <c-r>-
" paste previous yanked
inoremap <c-g> <c-r>0
" paste previous yanked or deleted
cnoremap <c-f> <c-r>"
inoremap <c-f> <c-r>"
" https://github.com/kylechui/nvim-surround
nmap ysw ysiw


" move
noremap <space> `
noremap <space><space> :marks<cr>
onoremap <silent> _ :<C-U>normal! T_vt_<CR>
noremap 88 f(
inoremap <c-h> <left>
cnoremap <c-h> <left>
inoremap <c-l> <right>
cnoremap <c-l> <right>
noremap <c-j> 4j
noremap <c-k> 4k
noremap <c-u> 11j
noremap <c-i> 11k
noremap - g; 


" input
inoremap num^ 0<cr>1<cr>2<cr>3<cr>4<cr>5<cr>6<cr>7<cr>8<cr>9<cr>
imap {^ {<cr>}<esc>ko
imap (9 ()
iabbr ret return

" cmap
cnoremap ^^ ~/


" omap
onoremap p i)
onoremap i2 i"
onoremap a2 a"



" terminal emulator
tnoremap <Esc> <C-\><C-n>
"autocmd TermOpen * setlocal nonumber
autocmd TermOpen * map <buffer> <silent> <cr> A<cr>


" netrw
" ref. https://teratail.com/questions/69995
function! NetrwMapping_prev_tab(islocal) abort
  return "normal! gT"
endfunction
let g:Netrw_UserMaps = [
\   ['gb', 'NetrwMapping_prev_tab'],
\ ]
