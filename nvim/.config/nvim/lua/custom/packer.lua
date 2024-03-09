-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({
        'maxmx03/solarized.nvim',
        as = "solarized",
        config = function()
            vim.o.background = 'dark'
            vim.cmd('colorscheme solarized')
        end
    })
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use('m4xshen/autoclose.nvim')
    use('b0o/schemastore.nvim')
    use {
        "github/copilot.vim",
        lazy = false,
        config = function()
            vim.g.copilot_no_tab_map = true;
            vim.g.copilot_assume_mapped = true;
            vim.g.copilot_tab_fallback = "";
        end
    }
    use({ -- Autoformat
        'stevearc/conform.nvim',
        config = function()
            require('conform').setup({
                notify_on_error = true,
                format_on_save = {
                    timeout_ms = 500,
                    lsp_fallback = true,
                },
                formatters_by_ft = {
                    lua = { 'stylua' },
                    -- Conform can also run multiple formatters sequentially
                    python = { "isort", "black" },
                    --
                    -- You can use a sub-list to tell conform to run *until* a formatter
                    -- is found.
                    -- javascript = { { "prettierd", "prettier" } },
                },
            })
        end
    })
end)
