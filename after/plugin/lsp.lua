local util = require('utils')
local lsp_zero = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})

--vim.pretty_print(package.loaded['mason.api.command'])
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'rust_analyzer', 'lua_ls' },
    handlers = {
        -- the rust-tools plugin is responsable for setup the rust server
        -- see to rust-tools.lua
        -- flutter tools plugin is responsable for setup the dart server
        -- see the flutter.lua
        rust_analyzer = lsp_zero.noop,
        --dartls = lsp_zero.noop,
    }
})

-- Configure lua language server for neovim
local lua_opts = lsp_zero.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })

    vim.keymap.set({ 'n', 'x' }, '<F3>', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)
end)


lsp_zero.setup()

--print(dump_table(lsp_zero))
