local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "Find file" })
keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" })
keymap.set("n", "<leader>t", "<cmd>FzfLua live_grep<cr>", { desc = "Find text" })

keymap.set("n", "<leader>x", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Diagnostics" })
