local opt = vim.opt
local o = vim.o
local g = vim.g

-- Use mouse when lazy
o.mouse = 'a'
o.mousescroll = 'ver:1,hor:1'

-- Indenting
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4

-- Numbers
o.number = true
o.ruler = false
o.relativenumber = true

-- Python
g.python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.14/bin/python3'

-- Matchup
g.matchup_matchparen_enabled = 0

-- Remove bottom cmdline/padding
o.cmdheight = 0

-- Go past end of line ONLY in blockwise
o.virtualedit = 'block'

-- Windows
o.winborder = 'none'
o.pumblend = 0
o.winblend = 0

-- General Options
o.sessionoptions = 'blank,buffers,curdir,globals,localoptions,options,resize,terminal,winpos,winsize'
o.wrap = false
o.cursorline = true
o.conceallevel = 2
o.concealcursor = 'nc'
o.cursorlineopt = 'number'
o.mouse = 'a'
o.ruler = false
o.undofile = true
o.ttyfast = true
o.updatetime = 100
o.smoothscroll = false
o.scrolloff = 3
o.sidescrolloff = 8
o.laststatus = 3
o.timeoutlen = 250
o.redrawtime = 1500
o.ttimeoutlen = 10
o.wrapscan = true
o.secure = true
o.exrc = false
o.confirm = true
o.autowrite = true
o.autowriteall = true
o.ignorecase = true
o.smartcase = true
o.undofile = true
o.swapfile = false
o.showmode = false
o.clipboard = 'unnamedplus'
opt.fillchars = {
  fold = ' ',
  eob = ' ', -- suppress ~ at EndOfBuffer
  diff = '░', -- ╱ ⣿ ░ ─
  msgsep = '‾',
  foldopen = '▾',
  foldsep = '│',
  foldclose = '▸',
  horiz = ' ',
  horizup = ' ',
  horizdown = ' ',
  vert = ' ',
  vertleft = ' ',
  vertright = ' ',
  verthoriz = ' ',
}

-- Disable Neovim's intro
opt.shortmess:append('sI')

-- Splits
o.splitbelow = true
o.splitright = true
o.splitkeep = 'screen'

-- Neovide
if g.neovide then
  -- vim.o.guifont = "Ellograph CF:h22:300:#e-subpixelantialias:#h-none"
  g.neovide_opacity = 0.90
  g.neovide_window_blurred = true
  g.neovide_scroll_animation_length = 0.5
  g.neovide_scroll_animation_far_lines = 99999
  g.neovide_cursor_animate_command_line = true
  g.neovide_show_border = false
  g.neovide_hide_mouse_while_typing = true
  g.neovide_no_idle = true
  g.neovide_floating_corner_radius = 0.4
  g.neovide_pixel_geometry = 'RGBH'
  opt.linespace = 0
  opt.guicursor = {
    'n-v-c:block',
    'i-ci-ve:ver25',
    'r-cr:hor20',
    'o:hor50',
    'a:blinkwait500-blinkoff500-blinkon250-Cursor',
  }
  g.neovide_position_animation_length = 0.3
  g.neovide_cursor_animate_in_insert_mode = true
  g.neovide_cursor_smooth_blink = true
  g.neovide_cursor_antialiasing = false
  g.neovide_cursor_trail_size = 1.0
  g.neovide_cursor_animation_length = 0.150
  g.neovide_refresh_rate = 144
  g.neovide_padding_top = 0
  g.neovide_padding_bottom = 0
  g.neovide_padding_left = 20
  g.neovide_padding_right = 0
  g.neovide_pixel_geometry = 'RGBH'
  g.neovide_floating_shadow = false

  -- Function to change scale factor (Ctrl + - / =)
  local change_scale_factor = function(delta)
    g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  vim.keymap.set('n', '<C-=>', function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set('n', '<C-->', function()
    change_scale_factor(1 / 1.25)
  end)
end

local is_windows = vim.fn.has('win32') ~= 0
local sep = is_windows and '\\' or '/'
local delim = is_windows and ';' or ':'
vim.env.PATH = table.concat({ vim.fn.stdpath('data'), 'mason', 'bin' }, sep) .. delim .. vim.env.PATH
