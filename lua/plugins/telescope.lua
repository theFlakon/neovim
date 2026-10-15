return {
    "nvim-telescope/telescope.nvim",
    version = "*", -- pin to the latest release tag instead of tracking master
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>ff", function() require("telescope.builtin").find_files() end,  desc = "Find files" },
        { "<leader>fg", function() require("telescope.builtin").live_grep() end,   desc = "Live grep" },
        { "<leader>fb", function() require("telescope.builtin").buffers() end,     desc = "Buffers" },
        { "<leader>fh", function() require("telescope.builtin").help_tags() end,   desc = "Help tags" },
        { "<leader>fr", function() require("telescope.builtin").oldfiles() end,    desc = "Recent files" },
        { "<leader>fw", function() require("telescope.builtin").grep_string() end, desc = "Grep word under cursor" },
        { "<leader>fd", function() require("telescope.builtin").diagnostics() end, desc = "Diagnostics" },
        { "<leader>f.", function() require("telescope.builtin").resume() end,      desc = "Resume last picker" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                prompt_prefix = "  ",
                selection_caret = " ",
                path_display = { "truncate" },
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = { prompt_position = "top", preview_width = 0.55 },
                    width = 0.87,
                    height = 0.80,
                },
                file_ignore_patterns = { "%.git/", "node_modules/", "%.lock" },
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        ["<Esc>"] = actions.close, -- close with one Esc instead of two
                    },
                },
            },
            pickers = {
                find_files = { hidden = true }, -- include dotfiles
                buffers = {
                    sort_lastused = true,
                    mappings = { i = { ["<C-d>"] = actions.delete_buffer } },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })

        -- Extensions must be loaded AFTER setup()
        pcall(telescope.load_extension, "fzf")
        pcall(telescope.load_extension, "ui-select")
    end,
}
