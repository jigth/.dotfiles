-- Setup lspconfig.


-- FIXME, TODO: Improve the user experience for diagnostics.
--
-- Problem Description: For now, the virtual text (default solution) is very ugly in my opinion
-- but works more consistently than hover windows. The idea would be to make the experience 
-- similar to CoC, VSCode or even better if possible.
--
-- Disable virtual text on diagnostics because it is annoying and ugly in my opinion
--vim.diagnostic.config({
--    virtual_text = false
--})

-- Show line diagnostics automatically in hover window
--vim.o.updatetime = 250
--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  print("Error: 'cmp_nvim_lsp' Lua module couldn't be loaded")
  return
end


local nvim_lsp = require('lspconfig')
local lsp_config = require("jigth.lsp-config")
local capabilities = vim.lsp.protocol.make_client_capabilities()

cmp_nvim_lsp.update_capabilities(capabilities)
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Initialize servers
local servers = { "pyright", "sumneko_lua", }

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { 
      on_attach = lsp_config.on_attach,
      capabilities = capabilities,
  }
end
