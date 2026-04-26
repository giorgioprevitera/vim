return {
    {
        "saghen/blink.cmp",
        lazy    = false,
        version = "*",
        opts    = {
            keymap = {
                preset      = "none",
                ["<Tab>"]   = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
                ["<C-n>"]   = { "select_next", "fallback" },
                ["<C-p>"]   = { "select_prev", "fallback" },
                ["<CR>"]    = { "accept", "fallback" },
                ["<C-e>"]   = { "show", "fallback" },
                ["<Esc>"]   = { "cancel", "fallback" },
            },
            appearance = { nerd_font_variant = "mono" },
            completion = {
                documentation = { auto_show = true, auto_show_delay_ms = 200 },
            },
            sources = { default = { "lsp", "path", "snippets", "buffer" } },
            cmdline = {
                -- keymap = {
                --     preset      = "none",
                --     ["<Tab>"]   = { "show_and_insert", "select_next" },
                --     ["<S-Tab>"] = { "show_and_insert", "select_prev" },
                --     ["<C-n>"]   = { "select_next", "fallback" },
                --     ["<C-p>"]   = { "select_prev", "fallback" },
                --     ["<C-e>"]   = { "cancel", "fallback" },
                -- },
                completion = {
                    list = { selection = { preselect = false, auto_insert = true } },
                    menu = { auto_show = true },
                },
            },
        },
    },

    {
        "windwp/nvim-autopairs",
        event  = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({ check_ts = true })
        end,
    },
}
