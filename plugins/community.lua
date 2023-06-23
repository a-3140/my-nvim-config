return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- { import = "astrocommunity.colorscheme.oxocarbon", enabled = true },
	{ import = "astrocommunity.colorscheme.catppuccin", enabled = true },
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup {
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				term_colors = true,
				transparent_background = false,
				no_italic = false,
				no_bold = false,
				styles = {
					comments = {},
					conditionals = {},
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
				},
				color_overrides = {
					mocha = {
						base = "#000000",
						mantle = "#000000",
						crust = "#000000",
					},
				},
				highlight_overrides = {
					mocha = function(C)
						return {
							TabLineSel = { bg = C.pink },
							CmpBorder = { fg = C.surface2 },
							Pmenu = { bg = C.none },
							TelescopeBorder = { link = "FloatBorder" },
						}
					end,
				},
			}

			vim.cmd.colorscheme "catppuccin"
		end,
	},
	{ import = "astrocommunity.completion.copilot-lua" },
	{ -- further customize the options set by the community
		"copilot.lua",
		opts = {
			suggestion = {
				keymap = {
					accept = "<C-l>",
					accept_word = false,
					accept_line = false,
					next = "<C-.>",
					prev = "<C-,>",
					dismiss = "<C/>",
				},
			},
		},
	},
	{ import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
	{
		"m4xshen/smartcolumn.nvim",
		opts = {
			colorcolumn = 100,
			disabled_filetypes = { "help" },
		},
	},
	-- example of imporing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity

	-- { import = "astrocommunity.colorscheme.catppuccin" },
	-- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
