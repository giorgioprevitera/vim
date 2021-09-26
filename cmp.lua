-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
  expand = function(args)
    vim.fn["UltiSnips#Anon"](args.body)
  end,
},
mapping = {
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.close(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
},
sources = {
  { name = 'nvim_lsp' },

  -- For vsnip user.

  -- For luasnip user.
  -- { name = 'luasnip' },

  -- For ultisnips user.
  { name = 'ultisnips' },

  { name = 'buffer' },
}
})

-- -- Setup lspconfig.
-- require('lspconfig')[%YOUR_LSP_SERVER%].setup {
-- capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }
