" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color.vim
" : ! sh ~/yumemigusa/config/nvim/mine/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=blue
hi CursorLineNr gui=bold guifg=aqua
hi Search guifg=DarkGray guibg=yellow
hi PmenuSel guibg=grape
hi Pmenu guibg=violet
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray

hi Comment guifg=blue
hi Constant guifg=sunset
hi String guifg=violet
hi Identifier guifg=aqua
hi Statement guifg=yellow
hi PreProc guifg=ruby
hi Type gui=NONE guifg=green
hi Special guifg=orange
hi Todo guibg=red

hi link TSFuncBuiltin TSFunction
hi link TSConstBuiltin Constant
hi link TSPunctBracket Normal
hi link TSConstructor Type2
hi link TSParameter Strong
hi link TSField Normal

hi link markdownItalic Normal
