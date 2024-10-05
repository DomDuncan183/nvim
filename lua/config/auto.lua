vim.filetype.add({
    pattern = { [".*/hyprland%.conf"] = "hyprlang" },
})

vim.api.nvim_create_autocmd("User", {
    desc = "Cleanup on exit",
    pattern = "VimtexEventQuit",
    group = vim.api.nvim_create_augroup("VimTex", { clear = true }),
    command = "VimtexClean",
})
