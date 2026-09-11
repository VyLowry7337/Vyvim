return {
  'Mirsmog/real-icons.nvim',
  build = ':RealIconsInstallPack material',
  config = function()
    require('real-icons').setup({

      pack = 'flow',

      packs = {
        flow = {
          type = 'vscode',
          path = vim.fn.expand('/Users/vy/Workspace/toolsApps/neovimTools/flowIcons'),
          theme = 'flow-deep',
          license = 'personal',
        },

        catppuccin = {
          type = 'vscode',
          path = vim.fn.expand('/Users/dom/.vscode/extensions/catppuccin.catppuccin-vsc-icons-1.26.0/'),
          theme = 'mocha',
        },
      },

      integrations = {
        snacks_picker = true,
      },

      overrides = {},
    })
  end,
}
