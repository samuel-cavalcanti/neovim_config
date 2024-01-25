local M = {}


function M.setup(lsp_zero)
    local rt = require("rust-tools")

    local zero_lsp_server = lsp_zero.build_options("rust_analyzer", {
        settings = {
            ["rust-analyzer"] = {
                inlayHints = {
                    locationLinks = false,
                },
                procMacro = { enable = true },
                checkOnSave = { command = "clippy" },
            },
        },
    })


    rt.setup({
        tools = {
            inlay_hints = {
                auto = true,
                parameter_hints_prefix = "",
                other_hints_prefix = "",
            }
        },
        server = zero_lsp_server
    })
end

return M
