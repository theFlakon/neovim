-- lua/lazy.lua

-- Bootstrap: если lazy.nvim ещё не скачан — клонируем его
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Настройка lazy.nvim
require("lazy").setup({
  spec = {
    -- автоматически подхватит все файлы в lua/plugins/
    { import = "plugins" },
  },
  install = {
    colorscheme = { "habamax" }, -- дефолтная цветосхема на время установки
  },
  checker = {
    enabled = true, -- фоновая проверка обновлений
    notify = false,
  },
  change_detection = {
    notify = false, -- не спамить уведомлением при изменении конфига
  },
})
