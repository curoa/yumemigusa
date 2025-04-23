
local function set_for_frontend()
  local current_dir = vim.fn.getcwd()
  local frontend_index = string.find(current_dir, "frontend")
  if frontend_index then
    local frontend_path = string.sub(current_dir, 1, frontend_index + #("frontend") - 1)
    vim.cmd("set path+=" .. frontend_path)
  end
end

set_for_frontend()
-- vim.api.nvim_create_autocmd("DirChanged", { callback = set_local_path })
