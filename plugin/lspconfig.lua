vim.lsp.enable({ 'emmylua_ls', 'clangd', 'zigscient', 'rust-analyzer', 'neocmake', 'mesonlsp' })

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.lua', '*.c', '*.zig', '*.rs', 'CMakeLists.txt', 'meson.build' },
    callback = function ()
        vim.lsp.buf.format()
    end
})

vim.diagnostic.config({
    signs = false,
    virtual_text = true,
    update_in_insert = true
})
