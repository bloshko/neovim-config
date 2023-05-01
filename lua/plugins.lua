-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use("ggandor/leap.nvim")
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use({
        "glepnir/zephyr-nvim",
        requires = { "nvim-treesitter/nvim-treesitter", opt = true },
    })
    use({ "rose-pine/neovim", as = "rose-pine" })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        requires = {
            "JoosepAlviste/nvim-ts-context-commentstring",
        },
    })
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },             -- Required
            { "williamboman/mason.nvim" },           -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },         -- Required
            { "hrsh7th/cmp-nvim-lsp" },     -- Required
            { "hrsh7th/cmp-buffer" },       -- Optional
            { "hrsh7th/cmp-path" },         -- Optional
            { "saadparwaiz1/cmp_luasnip" }, -- Optional
            { "hrsh7th/cmp-nvim-lua" },     -- Optional

            -- Snippets
            { "L3MON4D3/LuaSnip" },             -- Required
            { "rafamadriz/friendly-snippets" }, -- Optional
        },
    })
    use("nvim-tree/nvim-web-devicons")
    use("nvim-tree/nvim-tree.lua")
    use({
        "nvim-lualine/lualine.nvim",
    })
    use("f-person/git-blame.nvim")
    use("karb94/neoscroll.nvim")
    use("windwp/nvim-ts-autotag")
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })
    use("numToStr/Comment.nvim")
    use("sbdchd/neoformat")
    use("airblade/vim-gitgutter")
    use("mhinz/vim-startify")
    use({ "kevinhwang91/nvim-bqf", ft = "qf" })
    use("ray-x/go.nvim")
    use("ray-x/guihua.lua") -- recommended if need floating window support
    use({
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    })
end)
