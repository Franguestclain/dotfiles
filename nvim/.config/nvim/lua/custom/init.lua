local map = require("core.utils").map
local customPlugins = require("core.customPlugins")

-- Vim globals
vim.g.vimspector_base_dir = "~/.config/vimspector-config"
vim.g.vimspector_enable_mappings = "HUMAN"

-- MAPPINGS
map("n", "<leader>ft", ":TodoTelescope<CR>")

-- PLUGINS
customPlugins.add(function(use)
	use({
		"puremourning/vimspector",
	})
end)

customPlugins.add(function(use)
	use({
		"andweeb/presence.nvim",
	})
end)

customPlugins.add(function(use)
	use({
		"jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.configs.null-ls").setup()
		end,
	})
end)

customPlugins.add(function(use)
	use({
		"folke/trouble.nvim",
		require = "kyazdani42/nvim-web-devicons",
		after = "telescope.nvim",
		config = function()
			require("trouble").setup()
		end,
	})
end)

customPlugins.add(function(use)
	use({
		"folke/todo-comments.nvim",
		after = "trouble.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	})
end)
