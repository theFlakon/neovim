return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- File icons
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus" }, -- Lazy load
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
  },
  opts = {
    view = {
      width = 30,
      side = "left",
    },
    renderer = {
      group_empty = true,
      icons = {
        show = {
          git = true,
          folder = true,
          file = true,
          folder_arrow = true,
        },
      },
    },
    filters = {
      dotfiles = false, -- Show .dot files
    },
    git = {
      enable = true, -- Show git status
    },
    actions = {
      open_file = {
        quit_on_open = false, -- Whether to close the tree during the file opening:q:wq:kkkk
      },
    },
  },
}

