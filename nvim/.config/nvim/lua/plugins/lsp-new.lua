return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local capabilities = vim.tbl_deep_extend(
				"force",
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_nvim_lsp.default_capabilities()
			)

			-- Add this inside your config function, before the lspconfig setup
			vim.diagnostic.config({
				virtual_text = true, -- This enables inline diagnostics
				signs = true,
				update_in_insert = false,
				underline = true,
				severity_sort = true,
			})

			local lspconfig = require("lspconfig")

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.ruby_lsp.setup({
				capabilities = capabilities,
				auto_start = true,
				cmd = { "mise", "exec", "ruby", "--", "ruby-lsp" },
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})
			lspconfig.zls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})
			lspconfig.ocamllsp.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
				filetypes = { "html", "scss", "css" },
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
		end,
	},
}
