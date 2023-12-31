source ~/.config/nvim/mine/basic.vim
source ~/.config/nvim/mine/mapping.vim
source ~/.config/nvim/mine/_highlight.vim " ~/.config/nvim/mine/highlight.vim
source ~/.config/nvim/mine/syntaxinfo.vim

"MEMO
" O delay `timeoutlen`, `ttimeoutlen`

"FIX write appropriate file. maybe in autoload directory, but not work for me
autocmd BufRead ^a nnoremap <buffer> <cr> :e!<cr>
autocmd BufWritePost highlight.vim  ! sh ~/.config/nvim/mine/sed_color_name.sh
autocmd BufRead check_my_color.vim  nnoremap <buffer> <cr> :source %<cr>

