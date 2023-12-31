" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color.vim
" : ! sh ~/.config/nvim/mine/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=blue
hi CursorLineNr gui=bold guifg=aqua
hi Search guifg=DarkGray guibg=yellow
hi PmenuSel guifg=white guibg=violet
hi Pmenu guifg=white guibg=Gray
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray

"hi Normal guifg=#aaaaaa " `hi Normal NONE` is better, because it does not overwrite other highlight
hi Comment guifg=blue
hi Constant guifg=ruby
hi String guifg=violet
hi Strong gui=bold
hi Identifier guifg=aqua
hi Statement guifg=yellow
hi PreProc guifg=grape
hi Type gui=bold guifg=green
hi Constructor gui=nocombine,NONE guifg=teal
hi Special guifg=orange
hi Todo guibg=red

hi link @function.builtin @function
hi link @constant.builtin @constant
hi link @constructor Constructor 
hi link @parameter Strong
hi link @variable Normal
hi link @field Normal
hi link @attribute PreProc
hi @text.variable guifg=solid

