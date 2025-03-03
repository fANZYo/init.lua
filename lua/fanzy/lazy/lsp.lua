return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"j-hui/fidget.nvim",
	},
	config = function()
		require("fidget").setup({})
		require("mason").setup()

		local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_lsp.default_capabilities()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"html",
				"cssls",
				"ts_ls",
				"eslint",
				"lua_ls",
        "csharp_ls",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup {
						capabilities = capabilities,
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								}
							}
						}
					}
				end,
			}
		})

		vim.diagnostic.config({
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
		})
	end
}
