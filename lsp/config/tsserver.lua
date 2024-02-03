return {
  volar = function(opts)
    opts.root_dir = require("lspconfig.util").root_pattern "src/App.vue"
    return opts
  end,
}
