require('editor.common')

if vim.g.vscode then
    require('editor.vscode')
else
    require('editor.nvim')
end
