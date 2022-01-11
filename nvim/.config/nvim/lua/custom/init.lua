local map = require("core.utils").map
local customPlugins = require("core.customPlugins")

-- MAPPINGS
map("n", "<leader>ft", ":TodoTelescope<CR>")

-- PLUGINS
customPlugins.add(function(use)
	use({
		"puremourning/vimspector",
	})

	use({
		"andweeb/presence.nvim",
		config = function()
			require("presence"):setup({
				enable_line_number = true,
				workspace_text = "Valiendo madre en %s",
			})
		end,
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.configs.null-ls").setup()
		end,
	})

	use({
		"folke/trouble.nvim",
		after = "nvim-web-devicons",
		config = function()
			require("trouble").setup()
		end,
	})

	use({
		"folke/todo-comments.nvim",
		after = "trouble.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	})
end)

-- Vim globals
-- vim.g.vimspector_base_dir = "~/.config/vimspector-config"
vim.g.vimspector_enable_mappings = "HUMAN"
