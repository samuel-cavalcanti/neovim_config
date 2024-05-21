local lsp_zero = require('lsp-zero')
-- local rt = require("rust-tools")

local zero_lsp_server = lsp_zero.build_options("rust_analyzer", {
    settings = {
        ["rust-analyzer"] = {
            inlayHints = {
                locationLinks = true,
            },
            procMacro = { enable = true },
            checkOnSave = { command = "clippy" },
        },
    },
})

vim.g.rustaceanvim = {
  server =  zero_lsp_server

}
