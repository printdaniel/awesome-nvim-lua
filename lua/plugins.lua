return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- apperative plugins
    use 'hrsh7th/vim-vsnip'
    use 'andweeb/presence.nvim'
    -- functional plugins
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'williamboman/nvim-lsp-installer'
    use 'mfussenegger/nvim-jdtls'
    use 'onsails/lspkind-nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'akinsho/nvim-toggleterm.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
    use 'terrortylor/nvim-comment'
    use 'rafamadriz/friendly-snippets'
    use 'ThePrimeagen/harpoon'
    use "lukas-reineke/indent-blankline.nvim"
    use "xiyaowong/transparent.nvim"
    use {
        "ur4ltz/surround.nvim",
        config = function()
            require"surround".setup {mappings_style = "surround"}
        end
    }
    use({
        "kdheepak/lazygit.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            },
        config = function()
            require("telescope").load_extension("lazygit")
        end,
        })
-- ******************** Themes ******************************************--
    use { "ellisonleao/gruvbox.nvim" } 
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use {"savq/melange-nvim"}
    use {"folke/tokyonight.nvim"}
-- ***********************************************************************--
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'} 
    use {
        'p00f/cphelper.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'ygm2/rooter.nvim',
            opt = true
        }
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim', 
            'nvim-lua/plenary.nvim' 
        }
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim', 
        run = 'make' 
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
        require("trouble").setup {
                }
        end
    }


end)
