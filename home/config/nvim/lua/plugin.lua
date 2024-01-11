local M = {}

	function M.setup()
	local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazy_path) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable",
			lazy_path
		})
	end
	vim.opt.rtp:prepend(lazy_path)
	vim.g.mapleader = " "

	require("lazy").setup({
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				vim.cmd([[colorscheme tokyonight-night]])
			end
		},
		{
			"nvim-lualine/lualine.nvim",
			dependencies = {
				"nvim-tree/nvim-web-devicons"
			}
		},
		{
			"nvim-telescope/telescope.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons"
			}
		},
		{
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			dependencies = {
				{'neovim/nvim-lspconfig'},
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lsp-signature-help'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'saadparwaiz1/cmp_luasnip'},
				{'hrsh7th/cmp-nvim-lua'},
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
			}
		},
	})
end

return M
