-- Typescript, Javascript related languages and frameworks


-- SNIPPETS SUPPORT
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

require'lspconfig'.tsserver.setup{
    capabilities = capabilities,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = function() return vim.loop.cwd() end      -- run lsp for javascript in any directory
}

require'lspconfig'.graphql.setup{ }
