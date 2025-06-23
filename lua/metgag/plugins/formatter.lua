return {
	"stevearc/conform.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local mason_tool_installer = require("mason-tool-installer")
		local conform = require("conform")

		mason_tool_installer.setup({
			ensure_installed = {
        "biome",
				"dprint",
				"goimports",
				"stylua",
				"taplo",
			},
		})

		conform.setup({
			formatters_by_ft = {
				css = { "dprint" },
				-- go = { "goimports", "gofmt" },
				html = { "dprint" },
				javascript = { "biome" },
				javascriptreact = { "biome" },
				json = { "dprint" },
				lua = { "stylua" },
				toml = { "taplo", "dprint" },
				typescript = { "biome" },
				typescriptreact = { "biome" },
			},
			format_on_save = {
				lsp_fallback = "fallback",
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, {})
	end,
}
