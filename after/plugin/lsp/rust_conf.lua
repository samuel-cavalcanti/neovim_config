local lsp_zero = require('lsp-zero')
vim.g.rustaceanvim = {
        server = {
                capabilities = lsp_zero.get_capabilities()
        }

}
