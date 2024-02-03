return function(client, bufnr)
  -- local util = require "lspconfig.util"
  -- print(util.available_servers().)
  local active_clients = vim.lsp.get_active_clients { bufnr = bufnr }
  -- print(active_clients)
  if client ~= nil and client.name == "volar" then
    for _, c in ipairs(active_clients) do
      if c.name == "tsserver" then c.stop() end
    end
  end
end

-- vim.api.nvim_create_autocmd('LspAttach', {
--     group = vim.api.nvim_create_augroup('LspAttachConflicts', { clear = true }),
--     desc = 'Prevent tsserver and volar conflict',
--     callback = function(args)
--         if not (args.data and args.data.client_id) then
--             return
--         end
--
--         local active_clients = vim.lsp.get_clients()
--         local client = vim.lsp.get_client_by_id(args.data.client_id)
--
--         if client ~= nil and client.name == 'volar' then
--             for _, c in ipairs(active_clients) do
--                 if c.name == 'tsserver' then
--                     c.stop()
--                 end
--             end
--         end
--         vim.cmd.redrawstatus()
--     end,
-- })
