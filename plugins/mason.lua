-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "volar",
        "tailwindcss",
        "pyright",
        "lua_ls",
        "dockerls",
        "tsserver",
        "jsonls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "stylua", "black" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "js", "node2" },
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
---- require('lspconfig').setup_handlers({
--   function(server_name)
--     local server_config = {}
--     if require("neoconf").get(server_name .. ".disable") then
--       return
--     end
--     if server_name == "volar" then
--         server_config.filetypes = { 'vue', 'typescript', 'javascript' }
--     end
-- local lspconfig = require('lspconfig')
--     lspconfig[server_name].setup(server_config)
--   end,
-- })
