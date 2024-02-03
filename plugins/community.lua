return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.codeium-vim" }, -- ai
  -- { import = "astrocommunity.completion.tabnine-nvim" }, -- ai | was only supporting one word at a time
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" }, -- hints
  { import = "astrocommunity.lsp.nvim-lsp-file-operations" },
  { import = "astrocommunity.completion.cmp-cmdline" }, -- commandline (:) completion
  { import = "astrocommunity.color.twilight-nvim" }, -- color highlight
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
}
