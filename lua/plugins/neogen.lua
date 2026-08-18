return {
  'danymat/neogen',
  opts = {
    snippet_engine = 'luasnip',
    enabled = true,
    languages = {
      python = { template = { annotation_convention = 'reST' } },
    },
  },
  --stylua: ignore
  keys = {
    { "<leader>ng", function() require("neogen").generate() end, desc = "Annotation", },
    { "<leader>nc", function() require("neogen").generate { type = "class" } end, desc = "Class", },
    { "<leader>nf", function() require("neogen").generate { type = "func" } end, desc = "Function", },
    { "<leader>nt", function() require("neogen").generate { type = "type" } end, desc = "Type", },
  },
}
