return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "graphql",
      "html",
      "javascript",
      "json",
      "make",
      "typescript",
      "python",
      "tsx",
      "vue",
      "markdown",
    },
    autotag = { enable = true },
    highlight = { enable = true },
  },
}
