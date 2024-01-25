local M = {}
function M.setup(lsp_zero)
    require('mason').setup({})
    require('mason-lspconfig').setup({
        ensure_installed = { 'rust_analyzer', 'lua_ls' },
        handlers = {
            lsp_zero.default_setup,
            -- the rust-tools plugin is responsable for setup the rust server
            -- see to rust-tools.lua
            -- flutter tools plugin is responsable for setup the dart server
            -- see the flutter.lua
            rust_analyzer = lsp_zero.noop,
            --dartls = lsp_zero.noop,
        }
    })
end

return M
