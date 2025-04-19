local function snake_to_camel()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  local word = vim.fn.expand('<cword>')
  local word_start = vim.fn.matchstrpos(vim.fn.getline('.'), '\\k*\\%' .. (col+1) .. 'c\\k*')[2]
  local camel_case_word = word:gsub('(_)([a-z])', function(_, l) return l:upper() end)
  vim.api.nvim_buf_set_text(0, line - 1, word_start, line - 1, word_start + #word, {camel_case_word})
end

vim.api.nvim_create_user_command('SnakeToCamel', snake_to_camel, {})

