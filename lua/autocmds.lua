require "nvchad.autocmds"

local cmd = vim.api.nvim_create_autocmd

-- Open NvDash if no buffers open
cmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end,
})

-- Disable auto-commenting on newlines for all file types
cmd("FileType", {
  pattern = "*",
  desc = "Prevent comment continuation",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - { 'c', 'r', 'o' }
  end,
})
