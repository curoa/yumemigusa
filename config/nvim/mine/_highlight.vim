" copy highlight.vim to _highlight.vim with sed_color_name
" check_my_color
" : ! sh ~/.config/nvim/mine/sed_color_name.sh
set termguicolors

set cursorline " used for CursorLineNr
hi CursorLine gui=NONE guibg=NONE
hi LineNr guifg=#508fe2
hi CursorLineNr gui=bold guifg=#51b8e1
hi Search guifg=DarkGray guibg=#fff231
hi Match guifg=white guibg=#cc7b10
hi PmenuSel guifg=white guibg=#a45aaa
hi Pmenu guifg=white guibg=Gray
hi TabLineSel guibg=black
hi TabLine gui=NONE guifg=white guibg=Gray
hi TabLineFill guibg=LightGray
hi TrailingSpace guibg=#df4c94
"match TrailingSpace /\s\+$/

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
hi Title guifg=#508fe2

" written for html in jsx, tsx
hi link @tag @function
hi @tag.builtin guifg=#f0cfac
hi @tag.delimiter guifg=#f0cfac gui=nocombine,NONE
hi @tag.attribute guifg=#508fe2

hi link @function.builtin @function
hi link @constant.builtin @constant
hi link @constructor Constructor
hi link @parameter Strong
hi link @variable Normal
hi link @field Normal
hi link @attribute PreProc
hi link @keyword.import PreProc
hi @text.variable guifg=#aaaaaa
hi @string.special.url guifg=#51b8e1 gui=underline

hi @annotation.wip guibg=#f9344c guifg=#222222
hi @annotation.todo guibg=#f9344c guifg=#222222
hi @annotation.fix guibg=#fc4e32 guifg=#222222
hi @annotation.note guibg=#51b8e1 guifg=#222222
hi @annotation.xxx guibg=#f9344c guifg=#222222
hi @annotation.test guibg=#20c5af guifg=#222222
hi @annotation.hack guibg=#a45aaa guifg=#222222
hi @annotation.error guibg=#f9344c guifg=#222222

" Useful commands
" :TSHighlightCapturesUnderCursor
" :TSPlaygraundToggle # use after TSHighlightCapturesUnderCursor
" :SyntaxInfo

" Useful sites in setting highlight by treesitter
" https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#adding-queries
" https://zenn.dev/monaqa/articles/2021-12-22-vim-nvim-treesitter-highlight
" https://zenn.dev/vim_jp/articles/2022-12-25-vim-nvim-treesitter-2022-changes
" https://tree-sitter.github.io/tree-sitter/using-parsers#pattern-matching-with-queries
