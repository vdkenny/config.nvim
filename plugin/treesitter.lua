local pkg = require('nvim-treesitter')

local languages = { 'vimdoc', 'bash', 'lua', 'c', 'zig', 'rust', 'cmake' }
pkg.install(languages)

vim.api.nvim_create_autocmd('FileType', {
    pattern = languages,
    callback = function ()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
})
