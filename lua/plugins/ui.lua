return {

{
      "hiphish/rainbow-delimiters.nvim",
      event = "BufReadPost",
      config = function()
        local rainbow_delimiters = require "rainbow-delimiters"
        vim.g.rainbow_delimiters = {
          strategy = {
            [""] = rainbow_delimiters.strategy["global"],
            vim = rainbow_delimiters.strategy["local"],
          },
          query = {
            [""] = "rainbow-delimiters",
          },
          highlight = {
            "BlinkCmpKindField", -- Red
            "BlinkCmpKindType", -- Yellow
            "BlinkCmpKindEnum", -- Blue
            "BlinkCmpKindConstant", -- Orange
            "BlinkCmpKindStruct", -- Violet
            "BlinkCmpKindValue", -- Cyan
            "BlinkCmpKindText", -- Green
          },
        }
      end,
    },

{
    "utilyre/barbecue.nvim",
    event = "LspAttach",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    opts = {},
}


}
