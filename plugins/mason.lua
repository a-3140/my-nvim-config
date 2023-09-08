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
        "terraformls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "terraform_fmt", "stylua", "terraform_validate" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "node2" },
    },
  },
}
-- require"-lspconfig".volar.setup{
--   init_options = {
--     typescript = {
--       tsdk = '/Users/a3140/.nvm/versions/node/v18.16.0/lib/node_modules/typescript/lib'
--     }
--   },
-- },
--
