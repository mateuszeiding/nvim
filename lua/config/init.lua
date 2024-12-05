require("config.remap")
require("config.set")
vim.keymap.set('n', '[d', function()
    vim.diagnostic.goto_prev()
end, opts)
vim.keymap.set('n', ']d', function()
    vim.diagnostic.goto_next()
end, opts)