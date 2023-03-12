-- Setup nvim-cmp.

-- require('snippy').setup({
--     mappings = {
--         is = {
--             ['<Tab>'] = 'expand_or_advance',
--             ['<S-Tab>'] = 'previous',
--         },
--         nx = {
--             ['<leader>x'] = 'cut_text',
--         },
--     },
-- })


local cmp = require 'cmp'
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local lspkind = require "lspkind"

cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)

lspkind.init()

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
            -- vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs( -4),
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
        -- { name = 'snippy' },
        { name = 'ultisnips' },
        {
            name = 'buffer',
            option = {
                get_bufnrs = function()
                    return vim.api.nvim_list_bufs()
                end
            }
        },
        { name = 'path' },
    },
    preselect = cmp.PreselectMode.None,
    formatting = {
        -- Youtube: How to set up nice formatting for your sources.
        -- mode = 'symbol',
        format = lspkind.cmp_format {
            mode = "symbol_text",
            -- with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                path = "[path]",
                -- snippy = "[snippy]",
                vsnip = "[vsnip]",
                ultisnips = "[usnip]",
            },
        },
    },
    experimental = {
        -- Let's play with this for a day or two
        ghost_text = true,
    },
    -- view = {
    --     entries = "native"
    -- },
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'cmdline' }
    }
})

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})
