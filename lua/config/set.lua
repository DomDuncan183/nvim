vim.o.number = true
vim.o.relativenumber = true

vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.wrap = false
vim.o.swapfile = false

vim.o.scrolloff = 10
vim.o.updatetime = 100
vim.o.signcolumn = "yes"
vim.o.foldmethod = "indent"
vim.o.foldlevelstart = 20
vim.o.laststatus = 3
vim.o.showcmd = false

-- vim.o.spell = true
-- vim.o.textwidth = 100
-- vim.o.colorcolumn = '80'

vim.g.mapleader = " "
vim.g.skip_ts_context_commentstring_module = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
