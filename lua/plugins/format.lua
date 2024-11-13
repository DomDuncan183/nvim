return {
    "stevearc/conform.nvim",
    event = "VeryLazy",

    keys = {
        {
            "<leader>fs",
            function()
                require("conform").format({ async = true })
            end,
        },
    },
    opts = {
        formatters_by_ft = {
            c = { "clang_format" },
            cpp = { "clang_format" },
            sh = { "shfmt" },
            lua = { "stylua" },
            python = { "isort", "black" },
        },
        formatters = {
            clang_format = {
                args = { "-style={IndentWidth: 4, ColumnLimit: 80, AccessModifierOffset: 0, IndentAccessModifiers: true}" },
            },
            stylua = {
                prepend_args = { "--indent-type", "Spaces", "--indent-width", "4" },
            },
            shfmt = {
                prepend_args = { "-i", "4" },
            },
        },
    },
}
