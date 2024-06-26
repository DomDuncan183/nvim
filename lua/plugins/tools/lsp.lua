return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.g["diagnostics_active"] = true
        function Toggle_diagnostics()
            if vim.g.diagnostics_active then
                vim.g.diagnostics_active = false
                vim.diagnostic.disable()
            else
                vim.g.diagnostics_active = true
                vim.diagnostic.enable()
            end
        end

        vim.keymap.set(
            "n",
            "<leader>tt",
            Toggle_diagnostics,
            { noremap = true, silent = true, desc = "Toggle vim diagnostics" }
        )

        local lsp = require("lspconfig")
        lsp.lua_ls.setup({
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        globals = {
                            "vim",
                        },
                    },
                },
            },
        })
        lsp.bashls.setup({
            settings = {
                bashIde = {
                    globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
                    shellcheckArguments = "--exclude=SC3043",
                },
            },
        })
        lsp.jdtls.setup({
            single_file_support = true,
            init_options = {},
        })
        lsp.tsserver.setup({})
        lsp.clangd.setup({})

        vim.keymap.set("n", "<space>ll", vim.diagnostic.open_float)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
        vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf }
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
                vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
                vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            end,
        })
    end,
}
