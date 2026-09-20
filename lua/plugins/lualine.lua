return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- для иконок
    opts = {
        options = {
            icons_enabled = true, -- обратите внимание: enabled, не enable
            theme = "auto",
        },
    },
}
