-- vim.cmd.packadd "packer.nvim"
vim.cmd [[packadd packer.nvim]]

require("packer").startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
		commit = 'fbe7621', -- 2024/08/11 indicate commit, because new one break tsx indent.
	}
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	})
	use({
		'nvim-treesitter/playground', opt=true, cmd={"TSHighlightCapturesUnderCursor"}
	})
	use({
		-- "kylechui/nvim-surround",
		-- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		-- config = function()
		-- 	require("nvim-surround").setup({
		-- 		-- Configuration here, or leave empty to use defaults
		-- 		keymaps = {
		-- 			insert = "<C-z>s", -- default <c-g> is conflict to my map
		-- 			insert_line = "<C-z>S", -- default <c-g> is conflict to my map
		-- 			normal = "ys",
		-- 			normal_cur = "yss",
		-- 			normal_line = "yS",
		-- 			normal_cur_line = "ySS",
		-- 			visual = "S",
		-- 			visual_line = "gS",
		-- 			delete = "ds",
		-- 			change = "cs",
		-- 			change_line = "cS",
		-- 		},
		-- 	})
		-- end
		"kylechui/nvim-surround",
		tag = "*",
		config = function()
			-- stop default mappting
			vim.g.nvim_surround_no_insert_mappings = true
			-- vim.g.nvim_surround_no_visual_mappings = true
			-- vim.g.nvim_surround_no_normal_mappings = true
			require("nvim-surround").setup({
				-- pass
			})
			local keymap = vim.keymap.set
			-- Insert mode (C-z s / C-z S)
			keymap("i", "<C-z>s", "<Plug>(nvim-surround-insert)", { desc = "Add a surrounding pair (insert mode)" })
			keymap("i", "<C-z>S", "<Plug>(nvim-surround-insert-line)", { desc = "Add a surrounding pair on a new line (insert mode)" })
			-- below memo is default
			-- keymap("n", "ys", "<Plug>(nvim-surround-normal)")
			-- keymap("n", "yss", "<Plug>(nvim-surround-normal-cur)")
			-- keymap("n", "yS", "<Plug>(nvim-surround-normal-line)")
			-- keymap("n", "ySS", "<Plug>(nvim-surround-normal-cur-line)")
			-- keymap("n", "ds", "<Plug>(nvim-surround-delete)")
			-- keymap("n", "cs", "<Plug>(nvim-surround-change)")
			-- Visual mode (S / gS)
		end
	})
end)

