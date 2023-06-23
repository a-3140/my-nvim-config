return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },
  -- Set colorscheme to use
  termguicolors = true,
  colorscheme = "github_dark",
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true,     -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "vue",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        "tsserver",
        "vuels",
        -- "volar",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "volar",
    },
  },
  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- local lspconfig = require "lspconfig"
    -- local lspconfig_configs = require "lspconfig.configs"
    -- local lspconfig_util = require "lspconfig.util"
    --
    -- local function on_new_config(new_config, new_root_dir)
    --   local function get_typescript_server_path(root_dir)
    --     local project_root = lspconfig_util.find_node_modules_ancestor(root_dir)
    --     return project_root
    --         and (lspconfig_util.path.join(project_root, "node_modules", "typescript", "lib", "tsserverlibrary.js"))
    --         or ""
    --   end
    --
    --   if
    --       new_config.init_options
    --       and new_config.init_options.typescript
    --       and new_config.init_options.typescript.tsdk == ""
    --   then
    --     new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
    --   end
    -- end
    --
    -- local volar_cmd = { "vue-language-server", "--stdio" }
    -- local volar_root_dir = lspconfig_util.root_pattern "package.json"
    --
    -- lspconfig_configs.volar_api = {
    --   default_config = {
    --     cmd = volar_cmd,
    --     root_dir = volar_root_dir,
    --     on_new_config = on_new_config,
    --     filetypes = { "vue" },
    --     -- If you want to use Volar's Take Over Mode (if you know, you know)
    --     --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
    --     init_options = {
    --       typescript = {
    --         tsdk = "",
    --       },
    --       languageFeatures = {
    --         implementation = true, -- new in @volar/vue-language-server v0.33
    --         references = true,
    --         definition = true,
    --         typeDefinition = true,
    --         callHierarchy = true,
    --         hover = true,
    --         rename = true,
    --         renameFileRefactoring = true,
    --         signatureHelp = true,
    --         codeAction = true,
    --         workspaceSymbol = true,
    --         completion = {
    --           defaultTagNameCase = "both",
    --           defaultAttrNameCase = "kebabCase",
    --           getDocumentNameCasesRequest = false,
    --           getDocumentSelectionRequest = false,
    --         },
    --       },
    --     },
    --   },
    -- }
    -- lspconfig.volar_api.setup {}
    --
    -- lspconfig_configs.volar_doc = {
    --   default_config = {
    --     cmd = volar_cmd,
    --     root_dir = volar_root_dir,
    --     on_new_config = on_new_config,
    --
    --     filetypes = { "vue" },
    --     -- If you want to use Volar's Take Over Mode (if you know, you know):
    --     --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
    --     init_options = {
    --       typescript = {
    --         tsdk = "",
    --       },
    --       languageFeatures = {
    --         implementation = true, -- new in @volar/vue-language-server v0.33
    --         documentHighlight = true,
    --         documentLink = true,
    --         codeLens = { showReferencesNotification = true },
    --         -- not supported - https://github.com/neovim/neovim/pull/15723
    --         semanticTokens = false,
    --         diagnostics = true,
    --         schemaRequestService = true,
    --       },
    --     },
    --   },
    -- }
    -- lspconfig.volar_doc.setup {}
    --
    -- lspconfig_configs.volar_html = {
    --   default_config = {
    --     cmd = volar_cmd,
    --     root_dir = volar_root_dir,
    --     on_new_config = on_new_config,
    --
    --     filetypes = { "vue" },
    --     -- If you want to use Volar's Take Over Mode (if you know, you know), intentionally no 'json':
    --     --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    --     init_options = {
    --       typescript = {
    --         tsdk = "",
    --       },
    --       documentFeatures = {
    --         selectionRange = true,
    --         foldingRange = true,
    --         linkedEditingRange = true,
    --         documentSymbol = true,
    --         -- not supported - https://github.com/neovim/neovim/pull/13654
    --         documentColor = false,
    --         documentFormatting = {
    --           defaultPrintWidth = 100,
    --         },
    --       },
    --     },
    --   },
    -- }
    -- lspconfig.volar_html.setup {}
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
    --
  end,
}
