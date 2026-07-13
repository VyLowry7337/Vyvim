return {
  'Mirsmog/real-icons.nvim',
  build = ':RealIconsInstallPack material',
  config = function()
    require('real-icons').setup({

      pack = 'flow',

      packs = {
        flow = {
          type = 'vscode',
          path = vim.fn.expand('/Users/dom/Workspace/toolsApps/neovimTools/flowIcons'),
          theme = 'flow-dawn',
          license = 'personal',
        },
      },

      integrations = {
        snacks_picker = true,
      },

      overrides = {},
    })
  end,
}
