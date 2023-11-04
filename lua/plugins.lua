-- vim.cmd [[packadd packer.nvim]]

-- return require('packer').startup(function(use)
--     -- Packer can manage itself
--     use 'wbthomason/packer.nvim'
--
--     -- CORE
--     use {
--         'nvim-telescope/telescope.nvim', tag = '0.1.0',
--         requires = {
--             {'nvim-lua/plenary.nvim'},
--             {'kdheepak/lazygit.nvim'},
--         },
--         config = function ()
--             require('telescope').load_extension('lazygit')
--         end
--     }
--     use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
--     use 'nvim-treesitter/nvim-treesitter-context'
--     use('nvim-lualine/lualine.nvim') -- Fancy status line
--     use {
--         'nvim-tree/nvim-tree.lua',
--         requires = { 'nvim-tree/nvim-web-devicons' }, -- optional, for file icons },
--         tag = 'nightly' -- optional, updated every week. (see issue #1193)
--     }
--     use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'} -- tab-bar
--     -- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
--
--     -- LSP
--     use {
--         'VonHeikemen/lsp-zero.nvim',
--         requires = {
--             -- LSP Support
--             {'neovim/nvim-lspconfig'},
--             {'williamboman/mason.nvim'},
--             {'williamboman/mason-lspconfig.nvim'},
--             -- Autocompletion
--             {'hrsh7th/nvim-cmp'},
--             {'hrsh7th/cmp-buffer'},
--             {'hrsh7th/cmp-path'},
--             {'saadparwaiz1/cmp_luasnip'},
--             {'hrsh7th/cmp-nvim-lsp'},
--             {'hrsh7th/cmp-nvim-lua'},
--             -- Snippets
--             {'L3MON4D3/LuaSnip'},
--             {'rafamadriz/friendly-snippets'},
--         }
--     }
--     -- cosmetics panel for diagnostics, references, telescope, qickfix and location list
--     use { 'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons' }
--
--     -- tailwindcss-colors
--     use {
--         "themaxmarchuk/tailwindcss-colors.nvim",
--         -- load only on require("tailwindcss-colors")
--         module = "tailwindcss-colors",
--         -- run the setup function after plugin is loaded
--         config = function ()
--             -- pass config options here (or nothing to use defaults)
--             require("tailwindcss-colors").setup()
--         end
--     }
--
--     -- Additional
--     use('mbbill/undotree')
--     use('editorconfig/editorconfig-vim')
--     -- init.lua
--     use "lukas-reineke/indent-blankline.nvim"
--
--     -- utils
--     use ({
--         "windwp/nvim-autopairs",
--         config = function() require("nvim-autopairs").setup() end
--     })
--     use ({"mrjones2014/nvim-ts-rainbow"})
--     use ({
--         "terrortylor/nvim-comment",
--         requires = 'JoosepAlviste/nvim-ts-context-commentstring',
--         config = function ()
--             require('nvim_comment').setup({
--                 hook = function()
--                     require("ts_context_commentstring.internal").update_commentstring()
--                 end,
--             })
--         end
--     })
--
--     -- git
--     use('tpope/vim-fugitive') --git
--     use { 'lewis6991/gitsigns.nvim' }
--     use('kdheepak/lazygit.nvim')
--
--     -- Color Scheme
--     use({ 'rose-pine/neovim', as = 'rose-pine' })
--     use({ 'navarasu/onedark.nvim' })
--     use({ "ellisonleao/gruvbox.nvim" })
--     use({'Mofiqul/dracula.nvim'})
-- end)


 local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
 if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
     "git",
     "clone",
     "--filter=blob:none",
     "https://github.com/folke/lazy.nvim.git",
     "--branch=stable", -- latest stable release
     lazypath,
   })
 end
 vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    -- CORE
    {
        'nvim-telescope/telescope.nvim', version = '0.1.0',
        dependencies = {
            {'nvim-lua/plenary.nvim', commit = '9ac3e9541bbabd9d73663d757e4fe48a675bb054'},
            {'kdheepak/lazygit.nvim', commit = '32bffdebe273e571588f25c8a708ca7297928617'},
        },
        config = function ()
            require('telescope').load_extension('lazygit')
        end
    },
    {'nvim-treesitter/nvim-treesitter', commit = '18f9e1a47fc25272836a84aa8adb03925c73b33d'},
    {'nvim-treesitter/nvim-treesitter-context', commit = '0d730df898f3dc27fd88f03cfa6d26d2405554b4' },
    {'nvim-lualine/lualine.nvim', commit = '84ffb80e452d95e2c46fa29a98ea11a240f7843e'}, -- Fancy status line
    {
        'nvim-tree/nvim-tree.lua',
	commit = 'dcc344cc72a617ff01db950aedfd3b3430ba5b59',
        dependencies = { 'nvim-tree/nvim-web-devicons', commit = '4ec26d67d419c12a4abaea02f1b6c57b40c08d7e' }, -- optional, for file icons ,
        -- version = 'nightly' -- optional, updated every week. (see issue #1193)
    },
    {'romgrk/barbar.nvim', commit = '0a21988ddfe4e63ef4d89332b2a6914dbdbf16ac', dependecies = {'nvim-web-devicons', commit = '4ec26d67d419c12a4abaea02f1b6c57b40c08d7e' }}, -- tab-bar
    -- use {'akinsho/bufferline.nvim', tag = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'}

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim', commit = '48d5f891b57291550a7e32792abae4d0774942e3',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig', commit = '6fe69025b8825029ea9bf291ab3b1750f9bcb39e' },
            {'williamboman/mason.nvim', commit = 'df4bf38688c31056d222e68aa9f26e3c51090a97' },
            {'williamboman/mason-lspconfig.nvim', commit = 'b81c50c4baae7d80b1723b3fa86e814d7754d15b' },
            -- Autocompletion
            {'hrsh7th/nvim-cmp', commit = '777450fd0ae289463a14481673e26246b5e38bf2' },
            {'hrsh7th/cmp-buffer', commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa'},
            {'hrsh7th/cmp-path', commit = '91ff86cd9c29299a64f968ebb45846c485725f23'},
            {'saadparwaiz1/cmp_luasnip', commit = '18095520391186d634a0045dacaa346291096566' },
            {'hrsh7th/cmp-nvim-lsp', commit = '0e6b2ed705ddcff9738ec4ea838141654f12eeef'},
            {'hrsh7th/cmp-nvim-lua', commit = 'f3491638d123cfd2c8048aefaf66d246ff250ca6'},
            -- Snippets
            {'L3MON4D3/LuaSnip', commit = 'eb592e4be52fff5a514b7540d5341b55ca4c3226'},
            {'rafamadriz/friendly-snippets', commit = '8d91ba2dc2421a54981115f61b914974f938fa77'},
        },
    },
    -- cosmetics panel for diagnostics, references, telescope, qickfix and location list
    { 'folke/trouble.nvim', commit = '2ae7237c2917d661f458443c9a88680f8ca2d7b2',  dependencies = {'kyazdani42/nvim-web-devicons', commit = '4ec26d67d419c12a4abaea02f1b6c57b40c08d7e'} },
    -- tailwindcss-colors
    {
        "themaxmarchuk/tailwindcss-colors.nvim",
        -- load only on require("tailwindcss-colors")
        module = "tailwindcss-colors",
        -- build the setup function after plugin is loaded
        config = function ()
            -- pass config options here (or nothing to use defaults)
            require("tailwindcss-colors").setup()
        end
    },

    -- Additional
    {'mbbill/undotree', commit = '485f01efde4e22cb1ce547b9e8c9238f36566f21'},
    { 'editorconfig/editorconfig-vim', commit = '7f4e4dfc58c480d154116614e616d90aac77204d' },
    -- init.lua
    { "lukas-reineke/indent-blankline.nvim", commit = '018bd04d80c9a73d399c1061fa0c3b14a7614399' },

    -- utils
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup() end
    },
    {"mrjones2014/nvim-ts-rainbow", commit = '840039440e012ad798ef31349b93a5d4365023ff'},
    {
        "terrortylor/nvim-comment", commit = 'e9ac16ab056695cad6461173693069ec070d2b23',
        dependencies = {'JoosepAlviste/nvim-ts-context-commentstring', commit = '729d83ecb990dc2b30272833c213cc6d49ed5214'},
        config = function ()
            require('nvim_comment').setup({
                hook = function()
                    require("ts_context_commentstring.internal").update_commentstring()
                end,
            })
        end
    },

    -- git
    { 'tpope/vim-fugitive', commit = 'ef99f1d90cdb33a52931aed5868785b51fb9411d' },
    { 'lewis6991/gitsigns.nvim', commit = '372d5cb485f2062ac74abc5b33054abac21d8b58' },
    { 'kdheepak/lazygit.nvim', commit = '32bffdebe273e571588f25c8a708ca7297928617' },

    -- Color Scheme
    { 'rose-pine/neovim', name = 'rose-pine', commit = '3935606b6c1cd0111359142498a9b02d3a12e1f1' },
    { 'navarasu/onedark.nvim', commit = 'dd640f6cfb0e370cfd3db389f04b172508848bd3' },
    { "ellisonleao/gruvbox.nvim", commit = 'e685aebb5967c2597858a41779a8d38321253509' },
    {'Mofiqul/dracula.nvim', commit = 'b5bd9c7e4c6c8f4712610bda92140c735fe90521'},
})

