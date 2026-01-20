-- return {
--   "ibhagwan/fzf-lua",
--   -- optional for icon support
--   lazy = true,
--   dependencies = { "nvim-tree/nvim-web-devicons" },
--   opts = {
-- 		winopts = {
-- 			preview = {
-- 				layout = "vertical",
-- 				vertical = "up:60%",
-- 			}
-- 		},
-- 	},
--   keys = {
--     {"<leader>ff", "<cmd>FzfLua files<cr>", desc = "[f]ind [f]iles in cwd"},
--     {"<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "[f]ind open [b]uffers"},
--     {"<leader>fq", "<cmd>FzfLua quickfix_stack<cr>", desc = "[f]ind in [q]uickfix list"},
--     {"<leader>fl", "<cmd>FzfLua loclist_stack<cr>", desc = "[f]ind in [l]ocation list"},
--   }
-- }
return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		defaults = {
			-- Default configuration for telescope goes here:
			-- config_key = value,
			mappings = {},
		},
		pickers = {},
		extensions = {
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				-- the default case_mode is "smart_case"
			},
		},
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[f]ind [f]iles in cwd" },
		{ "<leader>fb", "<cmd>Telescope find_buffers<cr>", desc = "[f]ind open [b]uffers" },
		{ "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "[f]ind in [q]uickfix list" },
		{ "<leader>fl", "<cmd>Telescope loclist<cr>", desc = "[f]ind in [l]ocation list" },
	},
}
