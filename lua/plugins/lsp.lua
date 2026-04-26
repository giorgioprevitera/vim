return {
    { "nvim-lua/plenary.nvim",        lazy = true },
    { "MunifTanjim/nui.nvim",         lazy = true },
    { "kyazdani42/nvim-web-devicons", lazy = true },

    { "SmiteshP/nvim-navic",          lazy = true },
    {
        "hasansujon786/nvim-navbuddy",
        lazy         = true,
        dependencies = { "SmiteshP/nvim-navic", "MunifTanjim/nui.nvim" },
        keys         = { { "<leader>nb", ":Navbuddy<CR>", silent = true, desc = "Navbuddy" } },
    },

    {
        "mason-org/mason.nvim",
        lazy   = false,
        build  = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        lazy         = false,
        dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
        config       = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls",
                    "dockerls",
                    "efm",
                    "gopls",
                    "jdtls",
                    "jsonls",
                    "kotlin_language_server",
                    "lua_ls",
                    "pylsp",
                    "pyrefly",
                    "terraformls",
                    "tflint",
                    "yamlls",
                },
                automatic_enable = true,
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        lazy         = false,
        dependencies = {
            "mason-org/mason-lspconfig.nvim",
            "SmiteshP/nvim-navic",
            "hasansujon786/nvim-navbuddy",
        },
        config       = function()
            local navic    = require("nvim-navic")
            local navbuddy = require("nvim-navbuddy")

            -- All LSP attachment logic lives here via LspAttach.
            -- This fires for every client including pylsp, avoiding the
            -- per-server on_attach override bug from the old config.
            vim.api.nvim_create_autocmd("LspAttach", {
                group    = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then return end
                    local bufnr = args.buf

                    -- Breadcrumbs
                    if client.server_capabilities.documentSymbolProvider then
                        navic.attach(client, bufnr)
                        navbuddy.attach(client, bufnr)
                    end

                    -- pylsp: pyrefly handles definitions and references better
                    if client.name == "pylsp" then
                        client.server_capabilities.definitionProvider = false
                        client.server_capabilities.referencesProvider = false
                    end

                    local map = function(mode, lhs, rhs, desc)
                        vim.keymap.set(mode, lhs, rhs, {

                            buffer  = bufnr,
                            silent  = true,
                            noremap = true,
                            desc    = desc,
                        })
                    end

                    -- NOTE: K, ]d, [d, grn, grr, gra are 0.11+ built-in defaults.
                    -- Only map what is NOT already built-in.
                    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
                    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
                    map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
                    map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature help")
                    map("i", "<C-k>", vim.lsp.buf.signature_help, "Signature help")
                    map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, "Add workspace folder")
                    map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, "Remove workspace folder")
                    map("n", "<space>wl", function()
                        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                    end, "List workspace folders")
                    map("n", "<space>D", vim.lsp.buf.type_definition, "Type definition")
                    map("n", "<leader>re", vim.lsp.buf.rename, "Rename")
                    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
                    map("v", "<leader>ca", vim.lsp.buf.code_action, "Code action (visual)")
                    map("n", "gr", vim.lsp.buf.references, "References")
                    -- open_float replaces the removed vim.diagnostic.show_line_diagnostics
                    map("n", "<space>e", vim.diagnostic.open_float, "Open diagnostic float")
                    map("n", "<space>q", vim.diagnostic.setloclist, "Diagnostics to loclist")
                    map("n", "<space>f", function()
                        vim.lsp.buf.format({ async = true })
                    end, "Format buffer")
                end,
            })

            vim.lsp.config("lua_ls", {
                settings = { Lua = { diagnostics = { globals = { "vim" } } } },
            })
        end,
    },
}
