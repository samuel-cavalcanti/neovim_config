local M = {}

function M.setup(lsp_zero)
    local tools = require("flutter-tools")
    local zero_lsp_server = lsp_zero.build_options("dartls", {})
    -- use defaults
    tools.setup {
        lsp = zero_lsp_server,
        dev_log = {
            enable = true,
        }

    }
end

return M
