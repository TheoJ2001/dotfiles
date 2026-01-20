require("config.keymaps")
require("config.options")
require("config.lsp")
require("config.lazy")
require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	-- automatically check for plugin updates
	checker = { enabled = true },
	change_detection = {
		-- automatically check for config file changes and reload the ui
		enabled = true,
		notify = true, -- get a notification when changes are found
	},
})
