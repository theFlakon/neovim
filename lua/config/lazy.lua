-- lua/lazy.lua

-- Bootstrap: start or install Lazy vim
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

-- Prerequisites before plugins load
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Lazy vim setup
require("lazy").setup({
  spec = {
    -- Automatically looks for files in plugins directory
    { import = "plugins" },
  },
  install = {
    colorscheme = { "habamax" }, -- Default colorscheme during install
  },
  checker = {
    enabled = true, -- Background update check
    notify = false,
  },
  change_detection = {
    notify = false, -- Do not spam about config update
  },
})
