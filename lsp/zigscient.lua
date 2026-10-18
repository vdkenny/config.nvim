---@type vim.lsp.Config
return {
    cmd = { 'zscient' },
    filetypes = { 'zig' },
    root_markers = { 'build.zig.zon', 'build.zig', '.git' },
    workspace_required = false
}
