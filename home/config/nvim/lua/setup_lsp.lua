local M = {}

function M.setup()
	local lsp_zero = require("lsp-zero")
	lsp_zero.on_attach(function(client, bufnr)
		lsp_zero.default_keymaps({buffer = bufnr})
	end)

	require("lspconfig").clangd.setup({
		keys = {
		},
		root_dir = function(fname)
			return require("lspconfig.util").root_pattern(
				"Makefile",
				"CMakeLists.txt",
				"configure.ac",
				"configure.in",
				"config.h.in",
				"meson.build",
				"meson_options.txt",
				"build.ninja",
				"compile_commands.json"
			)(fname) or require("lspconfig.utils").find_git_ancestor(fname)
		end,
		capabilities = {
			offsetEncoding = { "utf-8" }
		},
		cmd = {
			"clangd",
			"--background-index",
			"--clang-tidy",
			"--header-insertion=iwyu",
			"--completion-style=detailed",
			"--function-arg-placeholders",
			"--fallback-style=llvm"
		},
		init_options = {
			usePlaceholders = true,
			completeUnimported = true,
			clangdFileStatus = true
		},
		filetypes = {
			"c", "h",
			"cpp", "hpp", "inl"
		}
	})
	require("lspconfig").rust_analyzer.setup({
		keys = {
		},
		settings = {
			["rust-analyzer"] = {
				cargo = {
					allFeatures = true,
					command = "clippy",
					extraArgs = { "--no-deps" }
				},
				procMacro = {
					enable = true,
					ignored = {
						["async-trait"] = {"async_trait"},
						["napi-derive"] = {"napi"},
						["async-recursion"] = {"async_recursion" }
					},
				},
			},
		},
		filetypes = {
			"rs"
		}
	})

	local cmp = require("cmp")
	cmp.setup({
		mapping = {
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-n>"] = cmp.mapping.select_next_item(),
			-- Add tab support
			["<S-Tab>"] = cmp.mapping.select_prev_item(),
			["<Tab>"] = cmp.mapping.select_next_item(),
			["<C-d>"] = cmp.mapping.scroll_docs(-4), 
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			}),
		},
		sources = {
			{ name = "nvim_lsp" },
			{ name = "nvim_lsp_signature_help" },
			{ name = "cmp_luasnip" },
			{ name = "path" },
			{ name = "buffer" },
		}

	})
end

return M


