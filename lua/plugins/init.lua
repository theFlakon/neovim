-- lua/plugins/init.lua

return {
  -- пример плагина, чтобы проверить что lazy.nvim работает
  {
    "nvim-lua/plenary.nvim", -- частая зависимость других плагинов, безопасно поставить первым
    lazy = true,
  },
}
