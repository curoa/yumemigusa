" check_my_color.vim
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=blue
hi CursorLineNr gui=NONE guifg=#1AA18E
hi Search guifg=DarkGray guibg=#FF9914
hi PmenuSel guibg=#386CB0
hi Pmenu guibg=#6964AD
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray

hi Todo guibg=#DF4C94
hi link markdownItalic Normal


hi link TSFuncBuiltin TSFunction
hi link TSConstBuiltin Constant
hi link TSPunctBracket Normal
hi link TSConstructor Type2
hi link TSParameter Strong
hi link TSField Normal
