local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "v" }, "<C-n>", "<cmd>lua Snacks.explorer.open()<CR>") -- Snacks Explorer

-- buffers
map("n", "X", "<cmd>lua require('nvchad.tabufline').close_buffer()<CR>", { desc = 'Close buffer', noremap = true, silent = true })
map("n", "L", "<cmd>lua require('nvchad.tabufline').next()<CR>", { noremap = true, silent = true })
map("n", "H", "<cmd>lua require('nvchad.tabufline').prev()<CR>", { noremap = true, silent = true })

-- Comment lines
map("n", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Comment" })
map("v", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Comment" })

-- move line up and down
map("v", "J", ":m '>+1<CR>gv==kgvo<esc>=kgvo", { desc = "move highlighted text down" })
map("v", "K", ":m '<-2<CR>gv==jgvo<esc>=jgvo", { desc = "move highlighted text up" })

-- Insert mode navigation
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Window Navigation (Ctrl + H,J,K,L)
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Clear search highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Quicksave & Copy full buffer
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

-- NvChad Utilities
map('n', '<leader>Nh', '<cmd>NvCheatsheet<CR>', { desc = "NvChad Cheatsheet" })
map('n', '<leader>Nd', '<cmd>Nvdash<CR>', { desc = "NvDash" })
map("n", "<leader>th", function()
  require("nvchad.themes").open()
end, { desc = 'Theme picker' })

-- Tiny inline diagnostics toggles
vim.keymap.set("n", "<leader>de", "<cmd>TinyInlineDiag enable<cr>", { desc = "Enable diagnostics" })
vim.keymap.set("n", "<leader>dd", "<cmd>TinyInlineDiag disable<cr>", { desc = "Disable diagnostics" })
vim.keymap.set("n", "<leader>dt", "<cmd>TinyInlineDiag toggle<cr>", { desc = "Toggle diagnostics" })
vim.keymap.set("n", "<leader>dc", "<cmd>TinyInlineDiag toggle_cursor_only<cr>", { desc = "Toggle cursor-only diagnostics" })
vim.keymap.set("n", "<leader>dr", "<cmd>TinyInlineDiag reset<cr>", { desc = "Reset diagnostic options" })

-- Tiny code action
vim.keymap.set({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
