return {
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",

        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "+" },
                },
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        opts = {},
    },
    {
        "folke/todo-comments.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "folke/zen-mode.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "folke/twilight.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            views = {
                cmdline_popup = {
                    border = {
                        style = "none",
                    },
                    position = {
                        row = "99%",
                        col = "0%",
                    },
                    size = {
                        width = 30,
                        height = "auto",
                    },
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
                    },
                },
                search_popup = {
                    border = {
                        style = "none",
                    },
                    position = {
                        row = "99%",
                        col = "50%",
                    },
                    size = {
                        width = 30,
                        height = "auto",
                    },
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
                    },
                },
            },
        },
    },
    {
        "rcarriga/nvim-notify",
        lazy = true,
        opts = {
            fps = 60,
            render = "minimal",
            top_down = false,
            timeout = 1000,
        },
    },
    {
        "MunifTanjim/nui.nvim",
        lazy = true,
    },
}
