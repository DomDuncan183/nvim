return {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",

    config = function()
        local lint = require("lint")

        lint.linters.pylint.args = {
            "-f",
            "json",
            "-d",
            "C0114,C0116",
        }
        lint.linters.luacheck.args = {
            "--globals",
            "vim",
        }
        -- lint.linters.shellcheck.args = {
        --     "--exclude",
        --     "SC3043",
        --     "--format",
        --     "json",
        --     "-",
        -- }
        lint.linters_by_ft = {
            -- c = { "clangtidy" },
            python = { "pylint" },
            -- bash = { "shellcheck" },
            -- sh = { "shellcheck" },
            javascript = { "eslint" },
            lua = { "luacheck" },
        }

        vim.api.nvim_create_autocmd({ "BufRead", "BufWritePost", "InsertLeave" }, {
            group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
