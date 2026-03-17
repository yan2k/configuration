return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					preview = { treesitter = true },
					color_devicons = true,
					sorting_strategy = "ascending",
					borderchars = {
						"", -- top
						"", -- right
						"", -- bottom
						"", -- left
						"", -- top-left
						"", -- top-right
						"", -- bottom-right
						"", -- bottom-left
					},
					path_display = { "smart" },
					layout_config = {
						height = 100,
						width = 400,
						prompt_position = "top",
						preview_cutoff = 40,
					}
				}
			})
		end,
	},
}
