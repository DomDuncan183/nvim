return {
    "stevearc/conform.nvim",
    event = "VeryLazy",

    keys = {
        {
            "<leader>fs",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
        },
    },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            c = { "clang_format" },
            sh = { "shfmt" },
        },

        format_on_save = { timeout_ms = 500, lsp_fallback = true },
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces" },
            },

            clang_format = {
                args = { "-style={IndentWidth: 4}" },
            },

            shfmt = {
                prepend_args = { "-i", "4" },
            },
        },
    },
}
