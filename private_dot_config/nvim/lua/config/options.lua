vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.termguicolors = true

vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.smartindent = true

vim.o.swapfile = false
vim.o.undofile = true

vim.api.nvim_create_autocmd({ "ModeChanged" }, {
	callback = function()
		local mode = vim.api.nvim_get_mode().mode
		if mode:match("i") or mode:match("c") or mode:match("t") then
			vim.o.relativenumber = false
		else
			vim.o.relativenumber = true
		end
		vim.cmd("redraw")
	end,
})
