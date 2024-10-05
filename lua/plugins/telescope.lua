return {
    "nvim-telescope/telescope.nvim",
    -- dependencies = "nvim-tree/nvim-web-devicons",
    cmd = "Telescope",
    lazy = true,

    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "live grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "find buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "help tags" },
    },
}
