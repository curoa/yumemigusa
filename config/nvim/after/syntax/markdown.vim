syntax clear
syntax match markdownTrailingSpace /\s\+$/
syntax match markdownLineBreak /  $/
hi markdownLineBreak guibg=#7c76cc " grape
hi markdownTrailingSpace guibg=#FC4E32 " sunset

syntax match @markdown.mine.block /^```/
hi link @markdown.mine.block Delimiter
