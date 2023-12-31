-- for `gf`
-- ~/.config/nvim/
-- ~/.config/nvim/lua/
-- ~/.config/nvim/ftplugin/

require "plugins"
require "treesitter"

vim.cmd('source ~/.config/nvim/_init.vim')

-- MEMO
-- below are useful
-- :scriptnames
-- :TSHighlightCapturesUnderCursor
-- :SyntaxInfo

-- TODO
-- TODO etc highlight
-- highlight f"{fuga} hoge"
-- ref.
-- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#adding-queries
-- /home/blackcat/.local/share/nvim/site/pack/packer/start/nvim-treesitter/queries/python


-- TODO
-- highlight format string f"week: {iw}"
-- highlight annotation comment #TODO #HACK etc
-- reload ^a by Enter

