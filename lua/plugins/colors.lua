local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	{
		'sainnhe/everforest',
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_enable_italic = true
			enable_transparency()
			vim.cmd.colorscheme('everforest')
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "everforest",
		}
	}
}
