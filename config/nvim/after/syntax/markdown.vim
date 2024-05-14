syntax clear
hi markdownLineBreak guibg=#7c76cc " grape
hi markdownTrailingSpace guibg=#FC4E32 " sunset
hi link @markup.heading Title

syntax match markdownTrailingSpace /\s\+$/
syntax match markdownLineBreak /  $/

syntax match @markdown.mine.block /^```/
hi link @markdown.mine.block Delimiter
