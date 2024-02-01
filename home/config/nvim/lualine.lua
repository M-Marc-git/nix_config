require('lualine').setup {
	options = {
		icon_enabled = true,
		theme = {
			normal = {
				a = {
					fg = colors.black,
					bg = colors.green
				},
				b = {
				},
				c = {
				},
				x = {
				},
				y = {
					bg = colors.gray
				},
				z = {
					fg = colors.black,
					bg = colors.green
				},
			},
			insert = {
				a = {
					fg = colors.black,
					bg = colors.yellow
				},
				b = {
				},
				c = {
				},
				x = {
				},
				y = {
					bg = colors.gray
				},
				z = {
					fg = colors.black,
					bg = colors.yellow
				},
			},
			visual = {
				a = {
					fg = colors.black,
					bg = colors.magenta
				},
				b = {
				},
				c = {
				},
				x = {
				},
				y = {
					bg = colors.gray
				},
				z = {
					fg = colors.black,
					bg = colors.magenta
				},
			},
			replace = {
				a = {
					fg = colors.black,
					bg = colors.red
				},
				b = {
				},
				c = {
				},
				x = {
				},
				y = {
					bg = colors.gray
				},
				z = {
					fg = colors.black,
					bg = colors.red
				},
			},
			inactive = {
				a = {
					bg = colors.black
				},
				b = {
				},
				c = {
				},
				x = {
				},
				y = {
					bg = colors.gray
				},
				z = {
					bg = colors.black
				},
			},
		},
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
			'diff',
			'diagnostics',
			'filename'
		},
		lualine_c = {
		},
		lualine_x = {
			'encoding',
			'fileformat',
			'filetype'
		},
		lualine_y = {
			'progress'
		},
		lualine_z = {
			'location'
		}
	},
	inactive_sections = {
		lualine_a = {
		},
		lualine_b = {
		},
		lualine_c = {
			'filename'
		},
		lualine_x = {
			'encoding',
			'fileformat',
			'filetype'
		},
		lualine_y = {
			'progress'
		},
		lualine_z = {
			'location'
		}
	},
	tabline = {
	},
	winbar = {
	},
	inactive_winbar = {
	},
	extensions = {
	}
}

