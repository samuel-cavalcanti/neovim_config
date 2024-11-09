local null_ls = require("null-ls")

null_ls.setup({
        sources = {
                -- null_ls.builtins.formatting.autopep8,
                null_ls.builtins.formatting.prettierd,
                -- null_ls.builtins.diagnostics.eslint,
                require("none-ls.diagnostics.eslint")
        },
})
