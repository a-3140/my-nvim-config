-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "tsserver",
        "tailwindcss",
        "pyright",
        "graphql",
        "lua_ls",
        "dockerls",
        "marksman",
        "volar",
      },
    },
  },
  require("lspconfig").volar.setup {
    documentFeatures = {
      documentFormatting = {
        defaultPrintWidth = 80,
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "eslint", "stylua", "prettier" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "emmet_ls" },
    },
  },
}
