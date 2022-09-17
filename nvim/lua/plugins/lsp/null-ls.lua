local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local format_on_save = function(client)
    if client.resolved_capabilities.document_formatting then
        vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.formatting()'
    end
end

null_ls.setup({
    debug = false,
    on_attack = format_on_save,
    sources = {
        formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
        formatting.black.with({ extra_args = { "--fast" } }),
        formatting.stylua,
        diagnostics.flake8
    },
})
