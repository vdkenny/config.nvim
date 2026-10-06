vim.lsp.enable({ 'emmylua_ls', 'clangd', 'zls', 'rust-analyzer', 'neocmake' })

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.lua', '*.c', '*.zig', '*.rs', 'CMakeLists.txt' },
    callback = function ()
        vim.lsp.buf.format()
    end
})

vim.diagnostic.config({
    signs = false,
    virtual_text = true,
    update_in_insert = true
})
