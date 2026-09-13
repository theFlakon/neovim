return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",           -- The command after an installation / update of parsers
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "python", "cpp", "c", "lua"},
    highlight = { enable = true },
    indent = { enable = true },
  },
}
