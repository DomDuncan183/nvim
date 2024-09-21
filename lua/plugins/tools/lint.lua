return {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",

    opts = {
        linters_by_ft = {
            python = { "pylint" },
            lua = { "luacheck" },
            tex = { "chktex" },
        },
        linters = {
            pylint = {
                "-f",
                "json",
                "--from-stdin",
                "-d",
                "C0114,C0116",
                function()
                    return vim.api.nvim_buf_get_name(0)
                end,
            },
            luacheck = {
                "--formatter",
                "plain",
                "--codes",
                "--ranges",
                "--globals vim",
                "-",
            },
        },
    },

    config = function(_, opts)
        local lint = require("lint")

        lint.linters_by_ft = opts.linters_by_ft
        for program, options in pairs(opts.linters) do
            lint.linters[program].args = options
        end

        vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
            group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
            callback = function()
                require("lint").try_lint()
            end,
        })
    end,
}
