vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- CORE
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'kdheepak/lazygit.nvim'},
        },
        config = function ()
            require('telescope').load_extension('lazygit')
        end
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-lualine/lualine.nvim') -- Fancy status line
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' }, -- optional, for file icons },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'} -- tab-bar

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    -- cosmetics panel for diagnostics, references, telescope, qickfix and location list
    use { 'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons' }

    -- Additional
    use('mbbill/undotree')
    use('editorconfig/editorconfig-vim')
    -- init.lua
    use "lukas-reineke/indent-blankline.nvim"

    -- utils
    use ({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup() end
    })
    use ({
        "terrortylor/nvim-comment",
        config = function () require('nvim_comment').setup() end
    })

    -- git
    use('tpope/vim-fugitive') --git
    use { 'lewis6991/gitsigns.nvim' }
    use('kdheepak/lazygit.nvim')

    -- Color Scheme
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'navarasu/onedark.nvim' })
end)
