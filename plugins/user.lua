return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
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
  {
    "projekt0n/github-nvim-theme",
    tag = "v0.0.7",
    config = function()
      require("github-theme").setup {
        comment_style = "italic",
        keyword_style = "italic",
        function_style = "italic",
        variable_style = "italic",
        dark_float = true,
        colors = { bg = "#18181B", blue = "#3F84E4" },
      }
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  }
}
