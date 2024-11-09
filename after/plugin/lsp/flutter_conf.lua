local lsp_zero = require('lsp-zero')
local tools = require("flutter-tools")
-- use defaults
tools.setup {
        lsp = {
                capabilities = lsp_zero.get_capabilities()
        },
        dev_log = {
                enable = true,
        }

}
