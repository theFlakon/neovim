--vim.lsp.config('asm-lsp', {
--cmd = { 'asm-lsp' },
--filetypes = { 'asm', 'vmasm' },
--root_markers = { '.asm-lsp.toml', '.git' },
--})

--vim.lsp.enable('asm-lsp')
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('ruff')
vim.lsp.enable('lua_ls')

vim.lsp.config('clangd', {
    cmd = { 'clangd', '--clang-tidy' }
})

vim.lsp.config['lua_ls'] = {
    -- Command and arguments to start the server.
    cmd = { 'lua-language-server' },
    -- Filetypes to automatically attach to.
    filetypes = { 'lua' },

}

vim.diagnostic.config({
    -- Show virtual text (inline messages at the end of the line)
    virtual_text = {
        -- Set this to false to disable virtual text messages
        -- set this to true (default) to show them
        -- You can also customize spacing and prefixes
        enabled = true,
        spacing = 2,
        prefix = "●",
    },
    -- Show signs in the sign column
    signs = {
        enabled = true,
        text = {
            [vim.diagnostic.severity.ERROR] = "E",
            [vim.diagnostic.severity.WARN] = "W",
            [vim.diagnostic.severity.INFO] = "I",
            [vim.diagnostic.severity.HINT] = "H",
        },
    },
    -- Show underlines
    underline = true,
    -- Update diagnostics as you type (or only on CursorHold)
    update_in_insert = false,
    -- Sort diagnostics by severity
    severity_sort = true,
    -- Enable a floating window for detailed messages
    float = {
        source = "always", -- Show source of the diagnostic
        -- Other float options can be set here
    },
})
