---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {
    "           ",
    "           ",
    "           ",
    "           ",
    "  ⟋|､      ",
    " (°､ ｡ 7   ",
    " |､  ~ヽ   ",
    " じしf_,)〳",
    "           ",
    "           ",
  },

  buttons = {
    { txt = "──────────────────", hl = "Comment" },
    { txt = "    Files", hl = 'Macro', cmd = "lua Snacks.picker.files()" },
    { txt = "    Recent", hl = 'Macro', cmd = "lua Snacks.picker.recent()" },
    { txt = "    Config", hl = 'Macro', cmd = "lua Snacks.picker.files({ cwd = vim.fn.stdpath('config') })" },
    { txt = "    Themes  ", hl = 'Macro', cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  󰒲  Plugins", hl = 'Macro', cmd = "Lazy" },
    { txt = "  󰿅  Quit", hl = 'Macro', cmd = ":qa" },
    { txt = "──────────────────", hl = "Comment" },
  },
}

M.cheatsheet = {
  theme = "grid",
}


M.ui = {
  cmp = {
    icons = true,
    icons_left = true,
  },
  tabufline = {
    lazyload = false,
  },
  statusline = {
      enabled = true,
      theme = "minimal",
      separator_style = "round",
  }
}

return M
