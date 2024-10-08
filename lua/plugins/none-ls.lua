return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black.with({
                    prefer_local = tostring(os.getenv("VIRTUAL_ENV")) .. "/bin/black",
                }),
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.rubocop,
                null_ls.builtins.formatting.rubocop,
                null_ls.builtins.diagnostics.ltrs,
                null_ls.builtins.diagnostics.cppcheck,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.goimports_reviser,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        vim.keymap.set("v", "<Leader>gf", vim.lsp.buf.format, {})
    end,
}
