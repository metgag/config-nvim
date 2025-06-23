return {
  "echasnovski/mini.nvim",
	-- "echasnovski/mini.indentscope",
	version = "*",
	config = function()
		local indentscope = require("mini.indentscope")

		indentscope.setup({
			draw = {
				delay = 200,
				animation = indentscope.gen_animation.none(),
			},
			symbol = "",
		})
	end,
}
