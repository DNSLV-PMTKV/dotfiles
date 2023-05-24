local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local format_on_save = function(client, bufnr)
	-- if client.resolved_capabilities.document_formatting then
	--   vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.formatting()'
	-- end
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end,
		})
	end
end

null_ls.setup({
	debug = false,
	on_attach = format_on_save,
	sources = {
		-- js/ts
		-- formatting.prettierd,
		formatting.eslint_d,
		diagnostics.eslint,
		-- lua
		formatting.stylua,
		-- python
		formatting.isort,
		formatting.black.with({ extra_args = { "--fast" } }),
		diagnostics.flake8,
	},
})
