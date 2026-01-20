return {
	"smjonas/inc-rename.nvim",
	event = "LspAttach",
	opts = {},
	init = function()
		vim.keymap.set("n", "grn", ":IncRename ")
	end,
}
