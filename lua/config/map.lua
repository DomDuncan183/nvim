-- stylua: ignore
vim.keymap.set("n", "<leader>lz", vim.cmd.Lazy)
vim.keymap.set("n", "<leader>zm", vim.cmd.ZenMode)
vim.keymap.set("n", "<leader>tw", vim.cmd.Twilight)

-- term
vim.keymap.set("n", "<leader>tm", "<cmd>tabnew<cr><cmd>terminal<cr>i")
vim.keymap.set("t", "<esc>", "<C-\\><C-N>")
vim.keymap.set("t", "<C-M-q>", "<C-\\><C-N><cmd>bd!<cr>")
vim.keymap.set("n", "<C-M-q>", "<cmd>bd!<cr>")

-- clear highlights
vim.keymap.set("n", "<leader>hl", vim.cmd.noh)

-- window splits
vim.keymap.set("n", "<leader>sv", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>sh", "<C-w>s<C-w>j")
vim.keymap.set("n", "<leader>sk", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>ve", "<C-w>=")
vim.keymap.set("n", "<leader>vh", "<C-w>_")
vim.keymap.set("n", "<leader>vv", "<C-w>|")

-- move between windows
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("t", "<M-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<M-j>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<M-k>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<M-l>", "<C-\\><C-N><C-w>h")

-- tabs
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tk", vim.cmd.tabclose)
vim.keymap.set("n", "<M-n>", vim.cmd.tabn)
vim.keymap.set("n", "<M-p>", vim.cmd.tabp)

-- moves blocks with indentation
vim.keymap.set("v", "J", ":m '<+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- puts cursor back
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor center when
-- jumping pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- keeps cursor center when
-- jumping to next search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- deletes the highlight
-- into the void register
vim.keymap.set("x", "<leader>p", "'_dP")

-- system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

-- starts search and replace on the current hovered word
vim.keymap.set("n", "<leader>ss", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- makes shell script executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })
