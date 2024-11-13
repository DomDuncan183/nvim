local map = vim.keymap.set

map("n", "[b", vim.cmd.bprev)
map("n", "]b", vim.cmd.bnext)

map("i", "<C-;>", "<C-c>A;")
map("n", "<C-;>", "A;<C-c>")
map("i", "<C-c>", "<esc>")
map("n", "Q", "<nop>")
map("n", "<F1>", "<nop>")
map("n", "q:", "<nop>")

map("n", "-", vim.cmd.Oil)
map("n", "<leader>lz", vim.cmd.Lazy)
map("n", "<leader>zm", vim.cmd.ZenMode)
map("n", "<leader>tw", vim.cmd.Twilight)

-- term
map("n", "<leader>tm", "<cmd>tabnew<cr><cmd>terminal<cr>i")
map("t", "<esc>", "<C-\\><C-N>")
map("t", "<C-M-q>", "<C-\\><C-N><cmd>bd!<cr>")
map("n", "<C-M-q>", "<cmd>bd!<cr>")

-- clear highlights
map("n", "<leader>hl", vim.cmd.noh)

-- window splits
map("n", "<leader>sv", "<C-w>v<C-w>l")
map("n", "<leader>sh", "<C-w>s<C-w>j")
map("n", "<leader>sk", "<cmd>q<cr>")
map("n", "<leader>ve", "<C-w>=")
map("n", "<leader>vh", "<C-w>_")
map("n", "<leader>vv", "<C-w>|")

-- move between windows
map("n", "<M-h>", "<C-w>h")
map("n", "<M-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")
map("t", "<M-h>", "<C-\\><C-N><C-w>h")
map("t", "<M-j>", "<C-\\><C-N><C-w>h")
map("t", "<M-k>", "<C-\\><C-N><C-w>h")
map("t", "<M-l>", "<C-\\><C-N><C-w>h")

-- tabs
map("n", "<leader>tn", vim.cmd.tabnew)
map("n", "<leader>tk", vim.cmd.tabclose)
map("n", "<M-n>", vim.cmd.tabn)
map("n", "<M-p>", vim.cmd.tabp)

-- moves blocks with indentation
-- map("v", "J", ":m '<+1<cr>gv=gv")
-- map("v", "K", ":m '<-2<cr>gv=gv")

-- puts cursor back
map("n", "J", "mzJ`z")

-- keeps cursor center when
-- jumping pages
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-f>", "<C-f>zz")
map("n", "<C-b>", "<C-b>zz")

-- keeps cursor center when
-- jumping to next search
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- deletes the highlight
-- into the void register
map("x", "<leader>p", "'_dP")

-- system clipboard
map({ "n", "v" }, "<leader>y", '"+y')
map({ "n", "v" }, "<leader>d", '"_d')

-- starts search and replace on the current hovered word
map("n", "<leader>ss", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- makes shell script executable
map("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })
