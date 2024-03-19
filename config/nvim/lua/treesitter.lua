require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = {"markdown"},
	},
}

require'nvim-treesitter.configs'.setup {
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["ap"] = "@parameter.outer",
				["ip"] = "@parameter.inner",
			},
			include_surrounding_whitespace = false,
		},
		swap = {
			enable = true,
			swap_next = {
				-- ["<leader>a"] = "@parameter.inner",
				["mn"] = "@parameter.inner",
			},
			swap_previous = {
				-- ["<leader>A"] = "@parameter.inner",
				["mp"] = "@parameter.inner",
			},
		},
	},
}

-- Highlight the @foo.bar capture group with the "Identifier" highlight group
vim.api.nvim_set_hl(0, "@foo.bar", { link = "Identifier" })
-- Highlight @foo.bar as "Identifier" only in Lua files
vim.api.nvim_set_hl(0, "@foo.bar.lua", { link = "Identifier" })
