return {
    { 'nvim-tree/nvim-web-devicons' },
    { 'romgrk/barbar.nvim',         dependencies = 'nvim-web-devicons' },

    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.x',
        -- or                            , version = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
    },
    -- themes
    { 'rose-pine/neovim', name = 'rose-pine' },
    { "catppuccin/nvim",  name = "catppuccin" },
    'marko-cerovac/material.nvim',

    -- buttom bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        version = "*",
        dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate'
    },
    -- Rust tools
    'simrat39/rust-tools.nvim',
    -- lsp servers
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    },

    -- formatter
    { 'nvimtools/none-ls.nvim' },
    --
    -- flutter
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    }, -- to colorize ANSI escape sequences
    -- {
    --     'm00qek/baleia.nvim',
    --     version = 'v1.4.0',
    --
    --     config = function()
    --         vim.g.conjure_baleia = require("baleia").setup({ line_starts_at = 3 })
    --
    --         local augroup = vim.api.nvim_create_augroup("ConjureBaleia", { clear = true })
    --
    --         vim.api.nvim_create_autocmd({ "BufEnter" }, {
    --             pattern = "conjure-log-*",
    --             group = augroup,
    --             callback = function()
    --                 vim.keymap.set(
    --                     { "n", "v" },
    --                     "[c",
    --                     "<CMD>call search('^; -\\+$', 'bw')<CR>",
    --                     { silent = true, buffer = true, desc = "Jumps to the begining of previous evaluation output." }
    --                 )
    --                 vim.keymap.set(
    --                     { "n", "v" },
    --                     "]c",
    --                     "<CMD>call search('^; -\\+$', 'w')<CR>",
    --                     { silent = true, buffer = true, desc = "Jumps to the begining of next evaluation output." }
    --                 )
    --             end,
    --         })
    --
    --         vim.api.nvim_create_user_command("BaleiaColorize", function()
    --             vim.g.conjure_baleia.once(vim.api.nvim_get_current_buf())
    --         end, { bang = true })
    --
    --         vim.api.nvim_create_user_command("BaleiaLogs", vim.g.conjure_baleia.logger.show, { bang = true })
    --     end,
    -- },
    -- games
    -- 'ThePrimeagen/vim-be-good'

    -- markdown
    { 'toppair/peek.nvim',     build = 'deno task --quiet build:fast' },

    -- Comments
    {
        'numToStr/Comment.nvim',
    }

}
