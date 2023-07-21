" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color.vim
" : ! sh ~/.config/nvim/mine/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=#508fe2
hi CursorLineNr gui=bold guifg=#51b8e1
hi Search guifg=DarkGray guibg=#FFF231
hi PmenuSel guifg=white guibg=#A45AAA
hi Pmenu guifg=white guibg=Gray
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray

hi Comment guifg=#508fe2
hi Constant guifg=#DF4C94
hi String guifg=#A45AAA
hi Strong gui=bold
hi Identifier guifg=#51b8e1
hi Statement guifg=#FFF231
hi PreProc guifg=#6964AD
hi Type gui=bold guifg=#38ba68
hi Constructor gui=nocombine,NONE guifg=#20c5af
hi Special guifg=#cc7b10
hi Todo guibg=#F9344C

hi link @function.builtin @function
hi link @constant.builtin @constant
hi link @constructor Constructor 
hi link @parameter Strong
hi link @variable Normal
hi link @field Normal

