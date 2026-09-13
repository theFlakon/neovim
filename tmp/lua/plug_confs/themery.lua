local themes_list =
{
    "gruvbox",
    "tokyonight",
    "retrobox",
    "tokyonight-night",
    "tokyonight-moon",
    "onedark",
    "evergarden",
    "ayu-mirage",
    "ayu-dark"
}

-- Minimal config
require("themery").setup({
    themes = themes_list,

    livePreview = true, -- Apply theme while picking. Default to true.
})
