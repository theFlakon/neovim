-- ###################
-- GENERAL DESCRIPTION
-- ###################
--
-- vim.key.set({mode}, {lhs}, {rhs}, {opts})
--
-- mode:     string or table. "n", "v", "i" ...
-- lhs:      key combination
-- rhs:      command or function
-- opts:     table with params
--
-- #############
-- OPTS LIST
-- #############
-- desc:      string  just a hotkey description, in a plugin menu
-- remap:     bool    prevents recursive mappingalways false
-- silent:    bool    show or not a command msg when it's executed
-- buffer:    int     buffer id. ID = 0 - current
-- expr:      bool    if true than we should calculate it
-- nowait:    bool    wait or not

local params = {
    silent = true,
    remap = false
}

--vim.g.mapleader = " " -- all the mapping with <leader> with space
--vim.g.maplocalleader = " " -- the same as above one but for local binds

vim.keymap.set("n", "<leader>w", ":w<CR>", params)
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", params)
vim.keymap.set("n", "<Esc><Esc>", "<Cmd>noh<CR>", params)

-- Fast renaming in the entire project
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'LSP: Rename symbol' })

-- Go to the function's definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
