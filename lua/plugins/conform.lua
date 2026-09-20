return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
        objc = { "clang-format" },
        objcpp = { "clang-format" },
        python = { "ruff_format" },
      },
      formatters = {
        ["clang-format"] = {
          command = "clang-format",
          args = { "--style=file" },
          stdin = true,
        },
      },
    })
  end,
}
