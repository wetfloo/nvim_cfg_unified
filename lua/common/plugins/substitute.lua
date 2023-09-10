return {
    "gbprod/substitute.nvim",

    keys = {
        'X',
        'cx',
        'cX',
    },

    -- This empty table is necessary, otherwise it doesn't run.

    opts = {},

    config = function(opts)
        require('substitute').setup(opts)
        local exchange = require('substitute.exchange')

        vim.keymap.set("n", "cx", exchange.operator, { noremap = true })
        vim.keymap.set("n", "cxx", exchange.line, { noremap = true })
        vim.keymap.set("n", "cxc", exchange.cancel, { noremap = true })
        vim.keymap.set("x", "X", exchange.visual, { noremap = true })
    end,
}
