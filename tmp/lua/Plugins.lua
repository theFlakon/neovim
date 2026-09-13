return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        lazy = false
    },

    {
        "zaldih/themery.nvim",
        lazy = false,
    },

    {
        "mason-org/mason.nvim",
        opts = {}
    },

    {
        "Shatur/neovim-ayu",
        laze = false,
    },

    {
        'everviolet/nvim',
        name = 'evergarden',
        priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
        opts = {
            theme = {
                variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
                accent = 'green',
            },
            editor = {
                transparent_background = false,
                sign = { color = 'none' },
                float = {
                    color = 'mantle',
                    solid_border = false,
                },
                completion = {
                    color = 'surface0',
                },
            },
        },
    },

    {
        "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ...
    },

    {
        "nvim-tree/nvim-web-devicons", opts = {}
    },

    {
        "lewis6991/gitsigns.nvim", opts = {}
    },

    {
        "romgrk/barbar.nvim", opts = {}
    },

    {
        "nvim-treesitter/nvim-treesitter",
        version = "*",
        -- event = { "BufReadPost", "BufNewFile" },
        lazy = false,                     -- Keep false to ensure loading for Neo-tree
        main = "nvim-treesitter.configs", -- Lazy handles the require logic here
        branch = "main",                  -- Explicitly force the stable branch
        opts = {
            ensure_installed = { 'c', 'python', 'cpp', 'hyprlang', 'asm', 'lua' },
            auto_install = true,
            highlight = { enable = true, disable = { "bash" } },
            indent = { enable = false },
        },
        -- Fallback config to handle edge cases
        config = function(_, opts)
            -- Protective call: If treesitter fails to load, don't crash neovim
            local status_ok, configs = pcall(require, "nvim-treesitter.configs")
            if not status_ok then
                return
            end
            configs.setup(opts)
        end,
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },

    {
        "neovim/nvim-lspconfig"
    },

    {
        "m4xshen/autoclose.nvim"
    },

    {
        "akinsho/toggleterm.nvim"
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies =
        {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false,                      -- neo-tree will lazily load itself
    },

    {
        'stevearc/conform.nvim',
        opts = {},
    },

    --{
    --'MeanderingProgrammer/render-markdown.nvim',
    --dependencies = { 'nvim-treesitter/nvim-treesitter',
    --'nvim-mini/mini.nvim' },
    --opts = {},
    --},
}
