return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        indent = {
            char = "│", -- символ вертикальной линии
            tab_char = "│",
        },
        scope = {
            enabled = true,    -- подсветка текущего блока вложенности
            show_start = true, -- подчёркивать начало блока
            show_end = false,
        },
        exclude = {
            filetypes = {
                "help",
                "dashboard",
                "neo-tree",
                "Trouble",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "NvimTree",
            },
        },
    },
}
