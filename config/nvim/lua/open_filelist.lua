local function find_and_open_tracing_ancestor()
	local fname = '^f' -- specify directry
	local hit = vim.fn.findfile(fname, ".;")

	vim.notify(hit, vim.log.levels.INFO)
	if hit ~= "" then
		vim.cmd('tabedit ' .. vim.fn.fnameescape(hit))
	else
		vim.notify(fname .. " ファイルが見つかりませんでした。", vim.log.levels.INFO)
	end
end

vim.api.nvim_create_user_command('FindFileList', find_and_open_tracing_ancestor, {})
