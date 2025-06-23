return {
	"metalelf0/black-metal-theme-neovim",
	lazy = false,
	priority = 1000,
	config = function()
		require("black-metal").setup({
			theme = "windir",
			-- Can be one of: 'light' | 'dark', or set via vim.o.background
			variant = "dark",
		})
		require("black-metal").load()
	end,
}
