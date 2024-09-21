return {
    "RRethy/vim-illuminate",
    event = "VeryLazy",

    opts = {
        providers = {"lsp"}
    },
    config = function(_, opts)
        require("illuminate").configure(opts)
    end,
}
