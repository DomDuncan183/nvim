return {
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",

        opts = {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = {
                enabled = false,
            },
            exclude = {
                filetypes = {
                    "lazy",
                    "dashboard",
                    "NvimTree",
                },
            },
        },
        main = "ibl",
    },
    {
        "echasnovski/mini.indentscope",
        event = "VeryLazy",

        opts = {
            symbol = "│",
            options = {
                try_as_border = true,
            },
        },

        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "lazy",
                    "dashboard",
                    "NvimTree",
                },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })
        end,
    },
}
