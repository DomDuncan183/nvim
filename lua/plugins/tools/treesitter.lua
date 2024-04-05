return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "java",
            "kotlin",

            "ini",
            "python",
            "bash",
            "c",

            "lua",
            "vim",
            "vimdoc",
            "query",
        },
        highlight = {
            enable = true,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn",
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
    },
}
