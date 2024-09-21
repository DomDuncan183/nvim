return {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",

    opts = {
        options = {
            theme = "tokyonight",
            disabled_filetypes = { "dashboard" },
        },
        sections = {
            lualine_x = { "filetype" },
        }
    }
}
