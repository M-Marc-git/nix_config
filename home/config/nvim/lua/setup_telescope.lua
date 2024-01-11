	local builtin = require("telescope.builtin")
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

	-- Fix colors
	-- TODO replace by the theme
	vim.api.nvim_set_hl(0, "FloatBorder", {bg="#1a1b26"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg="#1a1b26"})
	vim.api.nvim_set_hl(0, "TelescopeNormal", {bg="#1a1b26"})
	vim.api.nvim_set_hl(0, "TelescopeBorder", {bg="#1a1b26"})
