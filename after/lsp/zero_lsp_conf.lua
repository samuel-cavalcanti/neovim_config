local M = {}

function M.setup(lsp_zero)
    lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })

        vim.keymap.set({ 'n', 'x' }, '<F3>', function()
            vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
        end)
    end)

    local lsp_config = require('lspconfig')
    -- Configure lua language server for neovim
    lsp_config.lua_ls.setup(lsp_zero.nvim_lua_ls())


    lsp_zero.setup()
end

return M
