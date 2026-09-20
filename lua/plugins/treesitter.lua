return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main", -- явно фиксируем новую ветку
    build = ":TSUpdate",
    lazy = false,    -- в новой версии рекомендуют не откладывать загрузку
    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup()

        -- устанавливаем нужные парсеры явным вызовом install()
        treesitter.install({ "lua", "vim", "vimdoc", "python", "cpp", "c" })

        -- включаем подсветку синтаксиса через встроенный API neovim
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "lua", "vim", "vimdoc", "python", "cpp", "c" },
            callback = function()
                vim.treesitter.start()
                vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                --vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
