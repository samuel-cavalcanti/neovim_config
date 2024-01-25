local mason_config = require('lsp.mason_conf')
local cmp_config = require('after.plugin.lsp.cmp_conf')
local rust_config = require('after.plugin.lsp.rust_conf')
local flutter_config = require('after.plugin.lsp.flutter_conf')
local lsp_zero_config = require('after.plugin.lsp.zero_lsp_conf')



local lsp_zero = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})




mason_config.setup(lsp_zero)
cmp_config.setup(lsp_zero)
rust_config.setup(lsp_zero)
flutter_config.setup(lsp_zero)
lsp_zero_config.setup(lsp_zero)
