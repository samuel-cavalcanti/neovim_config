-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- themes
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'marko-cerovac/material.nvim'

    -- buttom bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('ThePrimeagen/harpoon')
    -- Rust tools
    use 'simrat39/rust-tools.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- flutter
    use { 'akinsho/flutter-tools.nvim', branch = "main", requires = 'nvim-lua/plenary.nvim' }
    -- to colorize ANSI escape sequences
    use { 'm00qek/baleia.nvim', tag = 'v1.2.0' }
    -- games
    use 'ThePrimeagen/vim-be-good'
end
)
