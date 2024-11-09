require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_vscode').lazy_load { paths = { "./snippets" } }
require('luasnip').config.setup {}
local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

local cmp_action = lsp_zero.cmp_action()
local cmp_format = lsp_zero.cmp_format {}

cmp.setup({
        sources = {
                { name = 'nvim_lua' },
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'spell',   keyword_length = 5 },
                { name = 'path' },
                { name = 'buffer',  keyword_length = 5 },
        },
        window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<Tab>'] = cmp_action.tab_complete(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        }),
        formatting = cmp_format,

})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
                { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
        }, {
                { name = 'buffer' },
        })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
                { name = 'buffer' }
        }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
                { name = 'path' }
        }, {
                { name = 'cmdline' }
        })
})
