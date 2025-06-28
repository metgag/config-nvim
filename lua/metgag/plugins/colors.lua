return {
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			require("black-metal").setup({
				-- Can be one of: bathory | burzum | dark-funeral | darkthrone |
				-- emperor | gorgoroth | immortal | impaled-nazarene | khold |
				-- marduk | mayhem | nile | taake | thyrfing | venom | windir
				theme = "gorgoroth",
				alt_bg = false,
			})
			require("black-metal").load()
      vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#222222" })
		end,
	},
}
