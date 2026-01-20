return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	opts = { flavour = "mocha", auto_integrations = true },
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
