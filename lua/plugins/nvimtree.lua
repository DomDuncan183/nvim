return {
    "nvim-tree/nvim-tree.lua",
    dependecies = "nvim-tree/nvim-web-devicons",
    lazy = false,

    opts = function()
        vim.api.nvim_create_autocmd("BufEnter", {
            nested = true,
            callback = function()
                if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
                    vim.cmd("quit")
                end
            end,
        })
    end,

    keys = { { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Tree Toggle" } },
}
