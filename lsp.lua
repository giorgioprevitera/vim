--local nvim_lsp = require('lspconfig')

---- Use an on_attach function to only map the following keys 
---- after the language server attaches to the current buffer
--local on_attach = function(client, bufnr)

--  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

--  --Enable completion triggered by <c-x><c-o>
--  --buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

--  require('lsp_signature').on_attach()


--  require'nvim-treesitter.configs'.setup {
--    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
--    highlight = {
--      enable = true,              -- false will disable the whole extension
--      disable = { "c", "rust" },  -- list of language that will be disabled
--    },
--    incremental_selection = {
--      enable = true,
--      keymaps = {
--        init_selection = "gnn",
--        node_incremental = "grn",
--        scope_incremental = "grc",
--        node_decremental = "grm",
--      },
--    },
--    indent = {
--      enable = true
--    },
--    textobjects = {
--      select = {
--        enable = true,
--        keymaps = {
--          -- You can use the capture groups defined in textobjects.scm
--          ["af"] = "@function.outer",
--          ["if"] = "@function.inner",
--          ["ac"] = "@class.outer",
--          ["ic"] = "@class.inner",
--        },
--      },
--    },
--  }

--  -- Mappings.
--  local opts = { noremap=true, silent=true }

--  -- See `:help vim.lsp.*` for documentation on any of the below functions
--  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--  buf_set_keymap('v', '<space>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
--  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--end

---- local servers = require'lspinstall'.installed_servers()
---- for _, server in pairs(servers) do
----   require'lspconfig'[server].setup{ on_attach = on_attach }
---- end

---- require'snippets'.use_suggested_mappings()

---- local capabilities = vim.lsp.protocol.make_client_capabilities()
---- capabilities.textDocument.completion.completionItem.snippetSupport = true
---- capabilities.textDocument.completion.completionItem.resolveSupport = {
----   properties = {
----     'documentation',
----     'detail',
----     'additionalTextEdits',
----   }
---- }
---- local servers = { "pyright", "gopls", "bashls", "yamlls", "jsonls", "terraformls", "jedi_language_server" }
---- for _, lsp in ipairs(servers) do
----   nvim_lsp[lsp].setup {
---- 	  capabilities = capabilities,
---- 	  on_attach = on_attach,
---- 	}
---- end


---- nvim_lsp.efm.setup {
----     init_options = {documentFormatting = true},
----     settings = {
----         rootMarkers = {".git/"},
----         languages = {
----             python = {
----                 {formatCommand = "efm-langserver", formatStdin = true}
----             }
----         }
----     }
---- }
