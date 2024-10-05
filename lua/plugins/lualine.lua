return {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "BufEnter",

    opts = {
        options = {
            theme = "tokyonight",
            disabled_filetypes = { "dashboard" },
        },
        sections = {
            lualine_x = { "filetype" },
        },
    },
}
