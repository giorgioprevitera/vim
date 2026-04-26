return {
    { "junegunn/fzf", build = "./install --bin" },

    {
        "ibhagwan/fzf-lua",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        config = function()
            local actions = require("fzf-lua").actions
            require("fzf-lua").setup({
                "borderless_full",
                winopts = { preview = { hidden = "hidden" } },
                keymap = {
                    builtin = {
                        ["<F1>"]     = "toggle-help",
                        ["<F2>"]     = "toggle-fullscreen",
                        ["<F3>"]     = "toggle-preview-wrap",
                        ["<C-h>"]    = "toggle-preview",
                        ["<F5>"]     = "toggle-preview-ccw",
                        ["<F6>"]     = "toggle-preview-cw",
                        ["<C-d>"]    = "preview-page-down",
                        ["<C-u>"]    = "preview-page-up",
                        ["<S-left>"] = "preview-page-reset",
                    },
                    fzf = {
                        ["ctrl-z"] = "abort",
                        ["ctrl-f"] = "half-page-down",
                        ["ctrl-b"] = "half-page-up",
                        ["ctrl-a"] = "beginning-of-line",
                        ["ctrl-e"] = "end-of-line",
                        ["alt-a"]  = "toggle-all",
                        ["f3"]     = "toggle-preview-wrap",
                        ["ctrl-h"] = "toggle-preview",
                        ["ctrl-d"] = "preview-page-down",
                        ["ctrl-u"] = "preview-page-up",
                        ["ctrl-q"] = "select-all+accept",
                    },
                },
                actions = {
                    files = {
                        ["enter"]  = actions.file_edit_or_qf,
                        ["ctrl-x"] = actions.file_split,
                        ["ctrl-s"] = actions.file_vsplit,
                        ["ctrl-t"] = actions.file_tabedit,
                        ["alt-q"]  = actions.file_sel_to_qf,
                    },
                },
                buffers = {
                    keymap  = { builtin = { ["<C-d>"] = false } },
                    actions = {
                        ["ctrl-x"] = actions.file_split,
                        ["ctrl-d"] = { actions.buf_del, actions.resume },
                    },
                },
            })
        end,
        keys = {
            { "<C-p>",      "<cmd>lua require('fzf-lua').files()<CR>",              desc = "Find files" },
            { "<C-t>",      "<cmd>lua require('fzf-lua').builtin()<CR>",            desc = "FZF builtin" },
            { "<C-b>",      "<cmd>lua require('fzf-lua').buffers()<CR>",            desc = "Buffers" },
            { "<leader>fa", "<cmd>lua require('fzf-lua').live_grep()<CR>",          desc = "Live grep" },
            { "<leader>fb", "<cmd>lua require('fzf-lua').grep_curbuf()<CR>",        desc = "Grep buffer" },
            { "<leader>fh", "<cmd>lua require('fzf-lua').command_history()<CR>",    desc = "Command history" },
            { "<leader>fd", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>",    desc = "LSP definitions" },
            { "<leader>fw", "<cmd>lua require('fzf-lua').grep_cword()<CR>",         desc = "Grep word" },
            { "<leader>fs", "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>", desc = "Document symbols" },
            { "<leader>fr", "<cmd>lua require('fzf-lua').lsp_references({winopts={preview={hidden='nohidden'}}})<CR>", desc = "LSP references" },
            { "<leader>ga", "<cmd>lua require('fzf-lua').git_branches()<CR>",       desc = "Git branches" },
            { "<leader>gc", "<cmd>lua require('fzf-lua').git_commits()<CR>",        desc = "Git commits" },
            { "<leader>gs", "<cmd>lua require('fzf-lua').git_status()<CR>",         desc = "Git status" },
            { "<leader>c",  "<cmd>lua require('fzf-lua').commands()<CR>",           desc = "Commands" },
        },
    },

    {
        "folke/flash.nvim",
        event  = "VeryLazy",
        config = function() require("flash").setup() end,
        keys   = {
            { "s", function() require("flash").jump() end,       mode = "n", desc = "Flash jump" },
            { "S", function() require("flash").treesitter() end, mode = "n", desc = "Flash treesitter" },
        },
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch       = "main",
        dependencies = { "nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons", "MunifTanjim/nui.nvim" },
        cmd          = { "Neotree" },
        config       = function()
            require("neo-tree").setup({
                source_selector = { winbar = true },
                filesystem = {
                    filtered_items = {
                        visible        = true,
                        hide_dotfiles  = false,
                        hide_gitignored = false,
                    },
                },
                window = {
                    mappings = {
                        ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
                    },
                },
            })
        end,
        keys = {
            { "<leader>p",  ":Neotree toggle filesystem left<CR>", silent = true, desc = "Toggle file tree" },
            { "<leader>rf", ":Neotree reveal<CR>",                 silent = true, desc = "Reveal in tree" },
            { "<leader>rg", ":Neotree reveal git_status<CR>",      silent = true, desc = "Reveal git status" },
        },
    },
}
