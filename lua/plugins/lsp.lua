vim.g["diagnostics_active"] = true
local function Toggle_diagnostics()
    if vim.g.diagnostics_active then
        vim.g.diagnostics_active = false
        vim.diagnostic.disable()
    else
        vim.g.diagnostics_active = true
        vim.diagnostic.enable()
    end
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",

        opts = {
            ensure_installed = {
                "clangd",
                "bashls",
                "lua_ls",
                "texlab",
                "pyright",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                lua_ls = {
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
                    capabilities = capabilities,
                },
                bashls = {
                    capabilities = capabilities,
                },
                pyright = {
                    capabilities = capabilities,
                },
                texlab = {
                    chktex = {
                        onOpenAndSave = true,
                        onEdit = true,
                    },
                    capabilities = capabilities,
                },
                clangd = {
                    capabilities = capabilities,
                },
            },
        },
        config = function(_, opts)
            for server, settings in pairs(opts.servers) do
                require("lspconfig")[server].setup(settings)
            end

            --stylua: ignore
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    local options = { buffer = ev.buf }
                    local map = vim.keymap.set

                    map("n", "<leader>tt", Toggle_diagnostics,
                        { noremap = true, silent = true, desc = "Toggle vim diagnostics" })

                    map("n", "<space>ll", vim.diagnostic.open_float)
                    map("n", "[d", vim.diagnostic.goto_prev)
                    map("n", "]d", vim.diagnostic.goto_next)
                    map("n", "<space>q", vim.diagnostic.setloclist)

                    map("n", "gD", vim.lsp.buf.declaration, options)
                    map("n", "gd", vim.lsp.buf.definition, options)
                    map("n", "K", vim.lsp.buf.hover, options)
                    map("n", "gi", vim.lsp.buf.implementation, options)
                    map("n", "<C-k>", vim.lsp.buf.signature_help, options)
                    map("n", "<space>D", vim.lsp.buf.type_definition, options)
                    map("n", "<space>rn", vim.lsp.buf.rename, options)
                    map({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, options)
                    map("n", "gr", vim.lsp.buf.references, options)
                end,
            })
        end,
    },
    {
        "nvimdev/lspsaga.nvim",
        event = "VeryLazy",
        opts = {},
    },
}
