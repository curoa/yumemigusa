" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color
" : ! sh ~/.config/nvim/mine/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=blue
hi CursorLineNr gui=bold guifg=aqua
hi Search guifg=DarkGray guibg=yellow
hi Match guifg=white guibg=orange
hi Statusline guifg=solid guibg=dark
hi PmenuSel guifg=white guibg=violet
hi Pmenu guifg=white guibg=Gray
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray
hi TrailingSpace guibg=ruby
"match TrailingSpace /\s\+$/

"hi Normal guifg=#aaaaaa " `hi Normal NONE` is better, because it does not overwrite other highlight
hi Comment guifg=blue
hi Constant guifg=ruby
hi String guifg=violet
hi Strong gui=bold
hi Identifier guifg=aqua
hi Operator guifg=yellow
hi Function guifg=aqua
hi Statement guifg=yellow
hi PreProc guifg=grape
hi Type gui=bold guifg=green
hi Constructor gui=nocombine,NONE guifg=teal
hi Special guifg=orange
hi Delimiter guifg=orange
hi Todo guibg=red
hi Title guifg=blue

" written for html in jsx, tsx
hi link @tag @function
hi @tag.builtin guifg=sand
hi @tag.delimiter guifg=sand gui=nocombine,NONE
hi @tag.attribute guifg=blue

hi link @function.builtin @function
hi link @constant.builtin @constant
hi link @type.builtin @type
hi link @constructor Constructor
hi link @parameter Strong
"hi link @variable Normal
hi @variable guifg=solid
hi link @field Normal
hi link @attribute PreProc
hi link @keyword.import PreProc
hi @text.variable guifg=solid
hi @string.special.url guifg=aqua gui=underline

hi @annotation.wip guibg=red guifg=#222222
hi @annotation.todo guibg=red guifg=#222222
hi @annotation.fix guibg=sunset guifg=#222222
hi @annotation.note guibg=aqua guifg=#222222
hi @annotation.xxx guibg=red guifg=#222222
hi @annotation.test guibg=teal guifg=#222222
hi @annotation.hack guibg=violet guifg=#222222
hi @annotation.error guibg=red guifg=#222222

" Useful commands
" :TSHighlightCapturesUnderCursor
" :TSPlaygraundToggle # use after TSHighlightCapturesUnderCursor
" :SyntaxInfo

" Useful sites in setting highlight by treesitter
" https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#adding-queries
" https://zenn.dev/monaqa/articles/2021-12-22-vim-nvim-treesitter-highlight
" https://zenn.dev/vim_jp/articles/2022-12-25-vim-nvim-treesitter-2022-changes
" https://tree-sitter.github.io/tree-sitter/using-parsers#pattern-matching-with-queries
