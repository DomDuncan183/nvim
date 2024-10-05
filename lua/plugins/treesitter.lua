return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "json",
            "fish",
            "ini",
            "toml",
            "hyprlang",

            "python",
            "bash",
            "c",
            "cpp",

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
