vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.expandtab = true

-- autocmds
vim.api.nvim_create_autocmd('InsertCharPre', {
  pattern = '*.py',
  callback = function()
    if vim.v.char ~= '{' then
      return
    end
    local node = vim.treesitter.get_node()
    if not node then
      return
    end
    -- Check if inside a string, add 'f' if missing
    if node:type() == 'string' or (node:parent() and node:parent():type() == 'string') then
      -- Logic to insert 'f'
    end
  end,
})
