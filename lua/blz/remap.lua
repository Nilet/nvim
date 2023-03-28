vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/blz/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "yaf", "mzggVGy`z")

vim.keymap.set("n", "<C-h>", "<C-W>h");
vim.keymap.set("n", "<C-j>", "<C-W>j");
vim.keymap.set("n", "<C-k>", "<C-W>k");
vim.keymap.set("n", "<C-l>", "<C-W>l");

vim.keymap.set("n", "<M-1>", "<cmd>ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<M-2>", "<cmd>ToggleTerm direction=vertical<CR>")
vim.keymap.set("n", "<M-3>", "<cmd>ToggleTerm direction=float<CR>")

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>bb", "<cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>bw<CR>")
