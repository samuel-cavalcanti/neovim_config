local lsp_zero = require('lsp-zero')
local schemastore = require('schemastore')
local lspconfig = require('lspconfig')


local function jsonls_handler()
    lspconfig.jsonls.setup {
        settings = {
            json = {
                schemas = schemastore.json.schemas(),
                validate = { enable = true },
            },
        },
    }
end

local function yamlls_handler()
    lspconfig.yamlls.setup {
        settings = {
            yaml = {
                schemaStore = {
                    -- You must disable built-in schemaStore support if you want to use
                    -- this plugin and its advanced options like `ignore`.
                    enable = false,
                    -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
                    url = "",
                },
                schemas = require('schemastore').yaml.schemas(),
            },
        },
    }
end

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
        jsonls = jsonls_handler,
        yamlls = yamlls_handler,
    }
})
