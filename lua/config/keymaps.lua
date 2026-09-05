local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "Find file" })
map("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" })
map("n", "<leader>t", "<cmd>FzfLua live_grep<cr>", { desc = "Find text" })

map("n", "<leader>x", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Diagnostics" })

map({ "n", "v", "i" }, "<c-h>", "<c-w>h", { desc = "Go to left window" })
map({ "n", "v", "i" }, "<c-j>", "<c-w>j", { desc = "Go to lower window" })
map({ "n", "v", "i" }, "<c-k>", "<c-w>k", { desc = "Go to upper window" })
map({ "n", "v", "i" }, "<c-l>", "<c-w>l", { desc = "Go to right window" })

map("n", "<leader>wh", "<c-w>s", { desc = "Split window horizontally" })
map("n", "<leader>wv", "<c-w>v", { desc = "Split window vertically" })
