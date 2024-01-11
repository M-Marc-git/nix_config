local M = {}

function M.setup()
	vim.opt.cursorline = true;
	vim.opt.clipboard = "unnamedplus"
	vim.opt.number = true
	vim.opt.tabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = false
end

return M
