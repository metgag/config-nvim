return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = function()
		local harpoon = require("harpoon")
		local keys = {
			{
				"<leader>a",
				function()
					harpoon:list():add()
				end,
				desc = "Harpoon File",
			},
			{
				"<C-e>",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "harpoon quick menu",
			},
			{
				"<C-p>",
				function()
					harpoon:list():prev()
				end,
			},
			{
				"<C-n>",
				function()
					harpoon:list():next()
				end,
			},
		}

		for i = 1, 5 do
			table.insert(keys, {
				"<leader>" .. i,
				function()
					harpoon:list():select(i)
				end,
				desc = "Harpoon to File " .. i,
			})
		end
		return keys
	end,
}
