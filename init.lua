require('options')
require('keymaps')

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    callback = function ()
        vim.hl.on_yank()
    end
})

vim.cmd('packadd! nohlsearch')

vim.pack.add({
    'https://github.com/mitander/flume.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',

    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/neovim/nvim-lspconfig',

    'https://github.com/saghen/blink.lib',
    'https://github.com/saghen/blink.cmp',

    'https://github.com/dmtrKovalenko/fff.nvim',

    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/lewis6991/gitsigns.nvim'
})
