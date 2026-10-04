local pkg = require('lualine')

pkg.setup({
    options = { theme = 'ayu_dark' },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' }
    }
})
