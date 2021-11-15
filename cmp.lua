-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require "lspkind"
lspkind.init()

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
      -- vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm(),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'ultisnips' },
    { name = 'buffer' },
    { name = 'path' },
  },
  preselect = cmp.PreselectMode.None,
  formatting = {
    -- Youtube: How to set up nice formatting for your sources.
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        path = "[path]",
        vsnip = "[vsnip]",
        ultisnips = "[usnip]",
      },
    },
  },
  experimental = {
    -- I like the new menu better! Nice work hrsh7th
    native_menu = false,

    -- Let's play with this for a day or two
    ghost_text = true,
  },
})
