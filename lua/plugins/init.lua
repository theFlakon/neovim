-- lua/plugins/init.lua

-- The anatomic of a specific plugin
--return {
--  "author/repo-name",        -- A required field - the github source
--  name = "custom-name",      -- An optional field. If there is a naming conflict
--  branch = "main",           -- If we need a certain branch
--  tag = "v1.0.0",            -- If we need a certain tag/commit
--  dependencies = { ... },    -- Some other plagins which this one bases on
--  event = "VeryLazy",        -- Lazy loading triggered by an event
--  cmd = "SomeCommand",       -- Lazy loading triggered by a command
--  ft = "python",             -- Lazy load triggered by a filetype
--  keys = { ... },            -- Lazy load triggered by a hotkey
--  build = ":SomeBuildCmd",   -- The command after an install/update
--  opts = { ... },            -- The config table. Automatic call require.setup(opts)
--  config = function() ... end, -- Manual configuration (alternative to opts)
--  enabled = true,            -- Turn on / turn off without a deletion
--  priority = 1000,           -- Important for colorshemes. They should be loaded before other plugins
--}

return {
  {
    "nvim-lua/plenary.nvim", -- Often dependency
    lazy = true,
  },
}
