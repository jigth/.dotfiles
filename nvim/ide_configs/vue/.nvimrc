" ------------------------------------------------------------------------ "
" +++++++++++ Configures Vue LSP Config autocompletion +++++++++++++++++++ "
" +++++++++++         __     __              _ ____    +++++++++++++++++++ "
" +++++++++++         \ \   / /   _  ___    | / ___|   +++++++++++++++++++ "
" +++++++++++          \ \ / / | | |/ _ \_  | \___ \   +++++++++++++++++++ "
" +++++++++++           \ V /| |_| |  __/ |_| |___) |  +++++++++++++++++++ "
" +++++++++++            \_/  \__,_|\___|\___/|____/   +++++++++++++++++++ "
" +++++++++++                                          +++++++++++++++++++ "
" ------------------------------------------------------------------------ "


lua << ENDL
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.tailwindcss.setup{ 
    autostart = false;
}

require'lspconfig'.volar.setup{
    autostart = false;
    capabilities = capabilities;
}
ENDL


" Exec multiple commands (one after the other) using the same remap
:command Vue3IDE :exec 'LspStart volar' <Bar> :exec 'LspStart tailwindcss' <Bar> :exec 'LspStart tsserver'

nnoremap <leader>v :exec 'LspStart volar' <Bar> :exec 'LspStart tailwindcss'

