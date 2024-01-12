require('lualine').setup {
	options = {
		icon_enabled = true,
		theme = 'auto',
		content_separator = {
			left = ' ',
			right = ' '
		},
		section_separator = {
			left = ' ',
			right = ' ',
		},
		disabled_filetypes = {
			statusline = {},
			winbar = {}
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000
		}
	},
	sections = {
		lualine_a = {
			'mode'
		},
		lualine_b = {
			'branch',
			'diff'
		},
		lualine_c = {
			'filename'
		},
		lualine_x = {
		},
		lualine_y = {
			'encoding',
			'fileformat',
			'filetype'
		},
		lualine_z = {
			'progress',
			'location'
		}
	},
	inactive_sections = {
		lualine_a = {
		},
		lualine_b = {
		},
		lualine_c = {
		},
		lualine_x = {
		},
		lualine_y = {
		},
		lualine_z = {
		}
	}
	tabline = {
	},
	winbar = {
	},
	inactive_winbar = {
	},
	extensions = {
	}
}

