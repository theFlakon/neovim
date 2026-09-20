return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            livePreview = true, -- Apply theme while picking. Default to true.
            themes = {
                "tokyonight", "tokyonight-moon", "tokyonight-night",
                "catppuccin", "catppuccin-frappe",
                "catppuccin-macchiato", "catppuccin-mocha", "catppuccin-nvim",
                "kanagawa", "kanagawa-dragon", "kanagawa-wave",
                "rose-pine", "rose-pine-main", "rose-pine-moon",
                "gruvbox", "retrobox",
                "",
            },
        })
    end
}
