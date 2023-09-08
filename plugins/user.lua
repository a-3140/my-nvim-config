return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "jamestthompson3/sort-import.nvim",
    config = function()
      require("sort-import").setup()
      require("sort-import").sort_import(true)
    end,
  },
  {
    "antosha417/nvim-lsp-file-operations",
    config = function() require("lsp-file-operations").setup() end,
  },
}
