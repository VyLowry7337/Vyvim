local map = vim.keymap.set
local del = vim.keymap.del

-- General Helpers
map("n", ";", ":", { desc = "CMD enter command mode" }) -- ';' for cmdline
map('n', '<C-C>', 'ciw') -- Change Inner Word Shortcut
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>") -- Quicksave

-- Snacks
map({ "n", "v" }, "<C-n>", "<cmd>lua Snacks.explorer.open()<CR>")
map('n', '<leader>ff', "<cmd>lua Snacks.picker.files()<CR>", { desc = "Find Files" })
map('n', '<leader>fr', "<cmd>lua Snacks.picker.recent()<CR>", { desc = "Find Recent" })
map("n", "<leader>fg", "<cmd>lua Snacks.picker.grep()<CR>", { desc = "Grep" })
map('n', '<leader>fq', "<cmd>lua Snacks.picker.qflist()<CR>", { desc = "Quickfix List" })
map("n", "<leader>fb", "<cmd>lua Snacks.picker.buffers()<CR>", { desc = "Find Buffers" })
map("n", "<leader>fH", "<cmd>lua Snacks.picker.help()<CR>", { desc = "Help Pages" })
map("n", "<leader>fm", "<cmd>lua Snacks.picker.marks()<CR>", { desc = "Find Marks" })
map("n", "<leader>fi", "<cmd>lua Snacks.picker.icons()<CR>", { desc = "Icon Search" })
map("n", "<leader>fh", "<cmd>lua Snacks.picker.highlights()<CR>", { desc = "Highlight Search" })
map("n", "<leader>gl", "<cmd>lua Snacks.picker.git_log()<CR>", { desc = "Git Log" })
map("n", "<leader>gs", "<cmd>lua Snacks.picker.git_status()<CR>", { desc = "Git Status" })
map("n", "<leader>fk", "<cmd>lua Snacks.picker.keymaps()<CR>", { desc = "Keymap Search" })
map("n", "<leader>fp", "<cmd>lua Snacks.picker.lazy()<CR>", { desc = "Plugin Specs Search" })

-- Buffers
map("n", "X", "<cmd>lua require('nvchad.tabufline').close_buffer()<CR>", { desc = 'Close buffer', noremap = true, silent = true })
map("n", "L", "<cmd>lua require('nvchad.tabufline').next()<CR>", { noremap = true, silent = true })
map("n", "H", "<cmd>lua require('nvchad.tabufline').prev()<CR>", { noremap = true, silent = true })

-- Comment lines
map("n", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Comment" })
map("v", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Comment" })

-- Move Line Up and Down
map("v", "J", ":m '>+1<CR>gv==kgvo<esc>=kgvo", { desc = "move highlighted text down" })
map("v", "K", ":m '<-2<CR>gv==jgvo<esc>=jgvo", { desc = "move highlighted text up" })

-- Insert Mode Navigation
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

-- Clear Search Highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- NvChad Utilities
map('n', '<leader>Nh', '<cmd>NvCheatsheet<CR>', { desc = "NvChad Cheatsheet" })
map('n', '<leader>Nd', '<cmd>Nvdash<CR>', { desc = "NvDash" })
map("n", "<leader>th", function()
  require("nvchad.themes").open()
end, { desc = 'Theme picker' })

-- Tiny Inline Diagnostics Toggles
map("n", "<leader>de", "<cmd>TinyInlineDiag enable<cr>", { desc = "Enable diagnostics" })
map("n", "<leader>dd", "<cmd>TinyInlineDiag disable<cr>", { desc = "Disable diagnostics" })
map("n", "<leader>dt", "<cmd>TinyInlineDiag toggle<cr>", { desc = "Toggle diagnostics" })
map("n", "<leader>dc", "<cmd>TinyInlineDiag toggle_cursor_only<cr>", { desc = "Toggle cursor-only diagnostics" })
map("n", "<leader>dr", "<cmd>TinyInlineDiag reset<cr>", { desc = "Reset diagnostic options" })

-- Tiny Code Action
map({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { desc = 'Code Action', noremap = true, silent = true })

-- Float Term
map( { 'n', 't' }, '<C-\\>', "<cmd>FloatermToggle<cr>", { desc = "Float Term" } )
map( 't', '<C-x>', '<C-\\><C-N>', { desc = 'Escape Terminal Mode' } )

