return {
  "folke/tokyonight.nvim",
  priority = 1000,        -- It should be loaded before other plugins
  config = function()
    vim.cmd.colorscheme("tokyonight")
  end,
}
