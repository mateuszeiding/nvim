return {
    'simrat39/rust-tools.nvim',
    config = function()
        require('rust-tools').setup({
            tools = {
                inlay_hints = { enable = true }
            },
        })
    end
}