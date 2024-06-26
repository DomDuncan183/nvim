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
        opts = {},
    },
    -- {
    --     "rcarriga/nvim-notify",
    --     lazy = true,
    --     -- opts = {
    --     --     timeout = 60,
    --     -- },
    -- },
}
