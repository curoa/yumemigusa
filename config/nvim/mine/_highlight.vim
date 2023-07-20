" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color.vim
" : ! sh ~/yumemigusa/config/nvim/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=#508fe2
hi CursorLineNr gui=bold guifg=#51b8e1
hi Search guifg=DarkGray guibg=#FFF231
hi PmenuSel guibg=#6964AD
hi Pmenu guibg=#A45AAA
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray

hi Comment guifg=#508fe2
hi Constant guifg=#FC4E32
hi String guifg=#A45AAA
hi Identifier guifg=#51b8e1
hi Statement guifg=#FFF231
hi PreProc guifg=#DF4C94
hi Type gui=NONE guifg=#21ba59
hi Special guifg=#FF9914
hi Todo guibg=#F9344C

hi link TSFuncBuiltin TSFunction
hi link TSConstBuiltin Constant
hi link TSPunctBracket Normal
hi link TSConstructor Type2
hi link TSParameter Strong
hi link TSField Normal

hi link markdownItalic Normal
