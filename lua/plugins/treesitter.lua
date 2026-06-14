return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			local  configs = require("nvim-treesitter.config")
			configs.setup({
				highlight = { enable = true },
				indent = { enable = true },
				autotage = { enable = true },
				ensure_installed = {"lua", "c", "python", "cpp"},
				auto_install = true,
			})
		end
	}
}
