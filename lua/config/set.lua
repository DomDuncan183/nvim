local options = {
    number = true,
    relativenumber = true,

    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    wrap = false,
    swapfile = false,

    scrolloff = 10,
    updatetime = 100,
    signcolumn = "yes",
    foldmethod = "indent",
    foldlevelstart = 20,
    laststatus = 3,
    showcmd = false,
    cursorline = true,
    conceallevel = 2,
}

local globals = {
    mapleader = " ",
    skip_ts_context_commentstring_module = true,
    loaded_netrw = 1,
    loaded_netrwPlugin = 1,
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

for key, value in pairs(globals) do
    vim.g[key] = value
end


--  vim.opt.spell = true
--  vim.opt.textwidth = 100
--  vim.opt.colorcolumn = '80'

-- vim.g.netrw_banner = 0
-- vim.g.netrw_altv = 1
-- vim.cmd("cd %:p:h")

-- vim.api.nvim_create_augroup("cmdline", { clear = true })
-- vim.api.nvim_create_autocmd("CmdlineLeave", {
--     group = "cmdline",
--     callback = function()
--         vim.fn.timer_start(5000, function()
--             vim.cmd("echon ' '")
--         end)
--     end,
-- })
