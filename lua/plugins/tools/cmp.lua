local cmp_icons = {
    Text = "",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰇽",
    Variable = "󰂡",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "󰅲",
}

return {
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        opts = {},

        --stylua: ignore
        keys = {
            { "<M-p>", function() require("luasnip").jump(-1) end, mode = { "i", "s" }},
            { "<M-n>", function() require("luasnip").jump(1) end, mode = { "i", "s" }},
        },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "saadparwaiz1/cmp_luasnip",
        },
        event = "VeryLazy",

        opts = function()
            local cmp = require("cmp")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local max_count = 10

            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
            cmp.setup({

                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },

                -- window = {
                --     completion = cmp.config.window.bordered(),
                --     documentation = cmp.config.window.bordered(),
                -- },

                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                }),

                sources = cmp.config.sources({
                    { name = "nvim_lsp", max_item_count = max_count },
                    { name = "luasnip", max_item_count = max_count },
                    { name = "path", max_item_count = max_count },
                    { name = "buffer", max_item_count = max_count },
                }),

                formatting = {
                    format = function(entry, vim_item)
                        vim_item.kind = string.format("%s %s", cmp_icons[vim_item.kind], vim_item.kind)
                        vim_item.menu = ({
                            buffer = "[Buffer]",
                            nvim_lsp = "[LSP]",
                            luasnip = "[LuaSnip]",
                            nvim_lua = "[Lua]",
                        })[entry.source.name]
                        return vim_item
                    end,
                },

                experimental = { ghost_text = true },
            })

            -- cmp.setup.cmdline({ "/", "?" }, {
            --     mapping = cmp.mapping.preset.cmdline(),
            --     sources = {
            --         { name = "buffer", max_item_count = max_count },
            --     },
            -- })
            --
            -- cmp.setup.cmdline(":", {
            --     mapping = cmp.mapping.preset.cmdline(),
            --     sources = cmp.config.sources({
            --         { name = "path", max_item_count = max_count },
            --         { name = "cmdline", max_item_count = max_count },
            --     }),
            -- })
        end,
    },
}
