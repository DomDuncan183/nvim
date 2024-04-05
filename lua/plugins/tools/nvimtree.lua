return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,

    opts = function()
        vim.api.nvim_create_autocmd("QuitPre", {
            callback = function()
                vim.cmd("NvimTreeClose")
            end,
        })
    end,

    keys = { { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Tree Toggle" } },
}
