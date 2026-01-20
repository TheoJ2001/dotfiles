return {
	"rachartier/tiny-code-action.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope.nvim" },
	},
	event = "LspAttach",
	opts = {
		backend = "delta",
		picker = "telescope",
	},
	init = function()
		vim.keymap.set({ "n", "x" }, "gra", function()
			require("tiny-code-action").code_action()
		end, { noremap = true, silent = true })
	end,
}
