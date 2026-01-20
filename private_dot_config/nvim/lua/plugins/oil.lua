return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = true,
		float = {
			border = "rounded",
		},
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
	lazy = false,
	keys = {
		{ "<leader>e", "<cmd>Oil --float<cr>", desc = "Open file [e]xplorer" },
	},
}
