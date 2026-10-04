vim.g.mapleader = ' '

vim.o.number = true
vim.o.relativenumber = true

vim.api.nvim_create_autocmd('UIEnter', {
    callback = function ()
        vim.o.clipboard = 'unnamedplus'
    end
})

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true
vim.o.scrolloff = 10

vim.o.confirm = true

vim.o.sw = 4
vim.o.ts = 4
vim.o.et = true

vim.opt.list = true

vim.o.fillchars = 'eob: '
vim.o.showmode = false
