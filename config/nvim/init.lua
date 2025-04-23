-- for `gf`
-- ~/.config/nvim/
-- ~/.config/nvim/lua/
-- ~/.config/nvim/ftplugin/
-- ~/yumemigusa/config/nvim/after/queries/comment/highlights.scm

require "plugins"
require "treesitter"

require "snake2camel"
require "set_path_project_root"

vim.cmd('source ~/.config/nvim/_init.vim')

-- MEMO
-- below are useful
-- :scriptnames
-- :redir hoge.txt :echo fuga :redir END
-- vim --noplugin
-- vim -V # read verbose level ref. https://neovim.io/doc/user/options.html#'verbose'
-- :checkhealth hoge

