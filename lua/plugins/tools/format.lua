return {
    "stevearc/conform.nvim",
    event = "VeryLazy",

    keys = {
        {
            "<leader>fs",
            function()
                require("conform").format({ async = true, lsp_fallback = false })
            end,
        },
    },
    opts = {
        -- format_on_save = { timeout_ms = 500, lsp_fallback = false },
        formatters_by_ft = {
            c = { "clang_format" },
            cpp = { "clang_format" },
            sh = { "shfmt" },
            lua = { "stylua" },
            python = { "isort", "black" },
        },
        formatters = {
            clang_format = {
                args = { "-style={IndentWidth: 4, ColumnLimit: 80}" },
            },
            stylua = {
                prepend_args = { "--indent-type", "Spaces", "--indent-width", "4"},
            },
            shfmt = {
                prepend_args = { "-i", "4" },
            },
        },
    },
}
