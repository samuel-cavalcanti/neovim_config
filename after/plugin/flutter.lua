local tools = require("flutter-tools")
local lsp_zero = require("lsp-zero")

local zero_lsp_server = lsp_zero.build_options("dartls", {})



tools.setup {
    lsp = zero_lsp_server,
    dev_log = {
        enable = true,
    }

} -- use defaults
