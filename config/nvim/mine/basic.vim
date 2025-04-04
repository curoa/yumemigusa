set number
set background
" set ambiwidth=single
set ambiwidth=double
set noincsearch
let loaded_matchparen = 1 " 括弧のハイライトを消す
set tabstop=4
set shiftwidth=4
set noexpandtab
set complete=.,w,b,u,t
set completeopt=menu,preview,fuzzy
set whichwrap=
set showcmd

" inherit terminal clor
highlight Normal ctermbg=none guifg=none guibg=none


" Move cursor to previous location when opening file
" ref. https://qiita.com/yahihi/items/4112ab38b2cc80c91b16
augroup vimrcEx
	au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
				\exe "normal g`\"" | endif
augroup END

