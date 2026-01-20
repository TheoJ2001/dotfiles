vim.g.mapleader = " "
vim.g.maplocalleader = "//"

vim.keymap.set({ "n", "v" }, "<leader>w", "<cmd>w<cr>", { desc = "[W]rite current buffer" })
vim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<cr>", { desc = "[Q]uit current buffer" })
vim.keymap.set({ "n", "v" }, "<leader>W", "<cmd>wq<cr>", { desc = "[W]rite and quit current buffer" })
