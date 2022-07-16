-- DEFAULT CONFIG (slightly modified)
-- Setup nvim-cmp.

local cmp = require'cmp'

-- Disabled some sections temporary due to using CoC instead 
-- (Only left VIM command line autocompletion and some mappings, they're really great)
cmp.setup({
 snippet = {
   -- REQUIRED - you must specify a snippet engine
   expand = function(args)
       require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
   end,
 },
 mapping = {
   ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
   ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
   ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i','c'}),
   ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i','c'}),
   ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), {'i','c'}),
   ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), {'i','c'}),
   ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
   ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
   ['<C-e>'] = cmp.mapping({
     i = cmp.mapping.abort(),
     c = cmp.mapping.close(),
   }),
   ['<CR>'] = cmp.mapping.confirm({ select = true }),
 },
 sources = cmp.config.sources({
     { name = 'nvim_lsp' },
     { name = 'luasnip' },
   }, {
     { name = 'buffer' },
   }
 )
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline('/', {
--  sources = {
--    -- { name = 'buffer' }
--  }
--})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline(':', {
--  sources = cmp.config.sources({
--    --{ name = 'path' },
--    --{ name = 'cmdline' },
--    -- { name = 'buffer' },
--  })
--})


-- Setup all language servers from this Lua Module
require('jigth.lsp.setup-lsp')
