vim.lsp.enable({ 'emmylua_ls', 'clangd', 'zls', 'rust-analyzer' })

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.lua', '*.c', '*.zig', '*.rs' },
    callback = function ()
        vim.lsp.buf.format()
    end
})

vim.diagnostic.config({
    signs = false,
    virtual_text = true,
    update_in_insert = true
})
