require("neo-tree").setup({
  -- ... other options ...
  filesystem = {
    -- Set to true to automatically refresh when files change (uses libuv)
    use_libuv_file_watcher = true,
    -- Automatically follow the currently open file
    follow_current_file = {
      enabled = true,
    },
    -- Optionally, bind to current working directory changes
    bind_to_cwd = true,
  },
    git_status = {
      symbols = {
        -- Change type
        added = "", -- or "✚"
        modified = "", -- or ""
        deleted = "✖", -- this can only be used in the git_status source
        renamed = "󰁕", -- this can only be used in the git_status source
        -- Status type
        untracked = "",
        ignored = "",
        unstaged = "󰄱",
        staged = "",
        conflict = "",
      },
    },
})
