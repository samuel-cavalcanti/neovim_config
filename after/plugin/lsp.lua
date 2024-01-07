local lsp_zero = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})

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
local cmp = require('cmp')
local lsp_config =require('lspconfig')


-- Configure lua language server for neovim
lsp_config.lua_ls.setup(lsp_zero.nvim_lua_ls())



lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })

    vim.keymap.set({ 'n', 'x' }, '<F3>', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)
end)

local cmp_action = lsp_zero.cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
  })
})

lsp_zero.setup()

