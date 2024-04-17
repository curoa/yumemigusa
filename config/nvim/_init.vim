source ~/.config/nvim/mine/basic.vim
source ~/.config/nvim/mine/mapping.vim
source ~/.config/nvim/mine/_highlight.vim " ~/.config/nvim/mine/highlight.vim
" ~/.config/nvim/mine/check_my_color
source ~/.config/nvim/mine/syntaxinfo.vim

"MEMO
" O delay `timeoutlen`, `ttimeoutlen`

"FIX write appropriate file. maybe in autoload directory, but not work for me
autocmd BufRead ^a nnoremap <buffer> <cr> :e!<cr>
autocmd BufWritePost highlight.vim ! sh ~/.config/nvim/mine/sed_color_name.sh
autocmd BufWritePost highlight.vim source ~/.config/nvim/mine/_highlight.vim

autocmd BufEnter check_my_color :source %:h/check_my_color.vim
"autocmd BufEnter check_my_color nnoremap <buffer> <cr> :source %:h/check_my_color.vim<cr>

" use TrailingSpace as default
autocmd BufEnter * syntax match TrailingSpace /\s\+$/
autocmd BufEnter *[(.md)|(.vim)] syntax clear TrailingSpace
autocmd TermOpen * syntax clear TrailingSpace

