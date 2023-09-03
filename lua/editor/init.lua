-- This file contains basic editor settings that don't require any plugins to set up --

-- Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Avoid weird 8 space tabs
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({ timeout = 1000 })
    end,
    group = highlight_group,
    pattern = '*',
})

if vim.g.vscode then
    require('editor.vscode')
else
    require('editor.nvim')
end

require('editor.common')