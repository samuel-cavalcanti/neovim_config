return {
        {
                'samuel-cavalcanti/wifi-android-connect',

                -- name='samuel-cavalcanti/wifi-android-connect',
                -- dir = "~/Repositories/random/wifi-android-connect",
                -- dev = { true },


        },

        { 'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },

        {
                'nvim-telescope/telescope.nvim',
                version = '0.1.x',
                -- or                            , version = '0.1.x',
                dependencies = { { 'nvim-lua/plenary.nvim' } },
        },
        -- themes
        { 'rose-pine/neovim',   name = 'rose-pine' },
        { "catppuccin/nvim",    name = "catppuccin" },
        'marko-cerovac/material.nvim',

        -- buttom bar
        {
                'nvim-lualine/lualine.nvim',
                dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
        },
        {
                'nvim-treesitter/nvim-treesitter',
                dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects',
                },
                build = ':TSUpdate'
        },
        -- Rust tools
        {
                'mrcjkb/rustaceanvim',
                version = '^4', -- Recommended
                lazy = false,   -- This plugin is already lazy
        },

        "b0o/schemastore.nvim",
        -- lsp servers
        {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v4.x',
                dependencies = {
                        -- LSP Support
                        { 'neovim/nvim-lspconfig' },             -- Required
                        { 'williamboman/mason.nvim' },           -- Optional
                        { 'williamboman/mason-lspconfig.nvim' }, -- Optional
                        {
                                'hrsh7th/nvim-cmp',              -- Autocompletion Required
                                dependencies = {
                                        { 'hrsh7th/cmp-nvim-lua' },
                                        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
                                        { 'hrsh7th/cmp-buffer' },   -- Optional
                                        { 'hrsh7th/cmp-path' },     -- Optional
                                        { 'hrsh7th/cmp-cmdline' },
                                        { 'f3fora/cmp-spell' },
                                        { 'saadparwaiz1/cmp_luasnip' }, -- Optional
                                        -- Snippets
                                        {
                                                'L3MON4D3/LuaSnip', -- Required
                                                version = "v2.*",
                                                build = 'make install_jsregexp',
                                                dependencies = {
                                                        { 'rafamadriz/friendly-snippets' }, -- Optional
                                                }
                                        },
                                }
                        },

                }
        },

        -- formatter
        {
                'nvimtools/none-ls.nvim',
                dependencies = {
                        "nvimtools/none-ls-extras.nvim",
                }

        },
        --
        -- flutter
        {
                'akinsho/flutter-tools.nvim',
                lazy = false,
                dependencies = {
                        'nvim-lua/plenary.nvim',
                        'stevearc/dressing.nvim', -- optional for vim.ui.select
                },
                -- config = true,
        }, -- to colorize ANSI escape sequences
        {
                "folke/neodev.nvim",
                opts = {},
                dependencies = {
                        'hrsh7th/nvim-cmp', -- Autocompletion Required
                }
        },
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

        -- Comments
        {
                'numToStr/Comment.nvim',
        }

}
