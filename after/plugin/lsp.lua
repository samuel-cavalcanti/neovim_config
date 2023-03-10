function dump_table(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump_table(v) .. '\n'
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

local lsp_zero = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})

--vim.pretty_print(package.loaded['mason.api.command'])
lsp_zero.ensure_installed({
    'rust_analyzer',
})
-- the rust-tools plugin is responsable for setup the rust server
-- see to rust-tools.lua
-- flutter tools plugin is responsable for setup the dart server
-- see the flutter.lua
lsp_zero.skip_server_setup({ 'rust_analyzer', 'dartls' })



-- Configure lua language server for neovim
lsp_zero.nvim_workspace()


lsp_zero.setup()
-- format document when save fil
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

--print(dump_table(lsp_zero))
