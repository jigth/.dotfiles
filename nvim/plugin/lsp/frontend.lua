--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


require'lspconfig'.html.setup {
  capabilities = capabilities,
  autostart = false,
}

require'lspconfig'.tailwindcss.setup{ 
  autostart = false,
}
