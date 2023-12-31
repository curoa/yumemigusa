" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color.vim
" : ! sh ~/.config/nvim/mine/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=#508fe2
hi CursorLineNr gui=bold guifg=#51b8e1
hi Search guifg=DarkGray guibg=#fff231
hi PmenuSel guifg=white guibg=#a45aaa
hi Pmenu guifg=white guibg=Gray
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray

"hi Normal guifg=#aaaaaa " `hi Normal NONE` is better, because it does not overwrite other highlight
hi Comment guifg=#508fe2
hi Constant guifg=#df4c94
hi String guifg=#a45aaa
hi Strong gui=bold
hi Identifier guifg=#51b8e1
hi Statement guifg=#fff231
hi PreProc guifg=#7c76cc
hi Type gui=bold guifg=#38ba68
hi Constructor gui=nocombine,NONE guifg=#20c5af
hi Special guifg=#cc7b10
hi Todo guibg=#f9344c

hi link @function.builtin @function
hi link @constant.builtin @constant
hi link @constructor Constructor 
hi link @parameter Strong
hi link @variable Normal
hi link @field Normal
hi link @attribute PreProc
hi @text.variable guifg=#aaaaaa

