local lsp_zero = require('lsp-zero')
require("mason").setup()
--lsp_zero.ensure_installed(
--    {
--        'tsserver',
--        'eslint',
--        'sumneko_lua',
--        'rust_analyzer'
--    }
--)
lsp_zero.preset('recommended')

--function dump(o)
--   if type(o) == 'table' then
--      local s = '{ '
--      for k,v in pairs(o) do
--         if type(k) ~= 'number' then k = '"'..k..'"' end
--         s = s .. '['..k..'] = ' .. dump(v) .. '\n'
--      end
--      return s .. '} '
--   else
--      return tostring(o)
--   end
--end



-- the rust-tools plugin is responsable to setup the rust server
-- see to rust-tools.lua
lsp_zero.skip_server_setup({ 'rust_analyzer', 'dartls' })


lsp_zero.set_preferences({
    --set_lsp_keymaps = true
})

-- Configure lua language server for neovim
lsp_zero.nvim_workspace()


lsp_zero.setup()
-- format document when save file
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
