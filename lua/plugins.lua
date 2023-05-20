return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        "ellisonleao/gruvbox.nvim",
        requires = { "rktjmp/lush.nvim" }
    }

    use 'glepnir/zephyr-nvim'

    use 'norcalli/nvim-colorizer.lua'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use { 'neoclide/coc.nvim', branch = 'release' }

    use { 'mg979/vim-visual-multi', branch = 'master' }

    use({
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function()
            require('my_statusline')
        end,
        -- some optional icons
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    })

    use 'skywind3000/asyncrun.vim'

    use 'skywind3000/vim-terminal-help'

    use 'tpope/vim-surround'

    use 'jiangmiao/auto-pairs'

    use 'ful1e5/onedark.nvim'


    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    }

    use 'p00f/nvim-ts-rainbow'

    use 'sainnhe/everforest'

    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use {
        'fatih/vim-go'
    }
end)
