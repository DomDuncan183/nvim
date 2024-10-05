return {
    "nvim-pack/nvim-spectre",
    lazy = true,

    -- stylua: ignore
    keys = {
        { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
    },
}
