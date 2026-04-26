return {
    {
        "lewis6991/gitsigns.nvim",
        event = "BufReadPre",
        opts  = {
            current_line_blame = true,
            on_attach = function(bufnr)
                local gs = require("gitsigns")
                local map = function(mode, l, r, opts)
                    vim.keymap.set(mode, l, r, vim.tbl_extend("force", { buffer = bufnr }, opts or {}))
                end

                map("n", "]c", function() gs.nav_hunk("next", { preview = true }) end, { desc = "Next hunk" })
                map("n", "[c", function() gs.nav_hunk("prev", { preview = true }) end, { desc = "Prev hunk" })
                map({ "n", "v" }, "<leader>hs", function() gs.stage_hunk() end, { desc = "Stage hunk" })
                map({ "n", "v" }, "<leader>hr", function() gs.reset_hunk() end, { desc = "Reset hunk" })
                map("n", "<leader>hS", gs.stage_buffer, { desc = "Stage buffer" })
                map("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo stage hunk" })
                map("n", "<leader>hR", gs.reset_buffer, { desc = "Reset buffer" })
                map("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk" })
                map("n", "<leader>hb", function() gs.blame_line({ full = true }) end, { desc = "Blame line" })
                map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "Toggle blame" })
                map("n", "<leader>hd", gs.diffthis, { desc = "Diff this" })
                map("n", "<leader>hD", function() gs.diffthis("~") end, { desc = "Diff this ~" })
                map("n", "<leader>td", gs.toggle_deleted, { desc = "Toggle deleted" })
                map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Select hunk" })
            end,
        },
    },

    {
        "NeogitOrg/neogit",
        dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
        cmd          = "Neogit",
        config       = function()
            require("neogit").setup({
                disable_context_highlighting = true,
                integrations = { diffview = true },
            })
        end,
        keys         = { { "<leader>go", ":Neogit<CR>", silent = true, desc = "Neogit" } },
    },

    {
        "sindrets/diffview.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd          = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
        config       = function() require("diffview").setup({}) end,
        keys         = {
            { "<leader>dvc", ":DiffviewClose<CR>",         silent = true, desc = "Diffview close" },
            { "<leader>dvo", ":DiffviewOpen<CR>",          silent = true, desc = "Diffview open" },
            { "<leader>dvf", ":DiffviewFileHistory %<CR>", silent = true, mode = { "n", "v" },    desc = "Diffview file history" },
        },
    },

    -- vim-fugitive: kept for :Git blame (<leader>gb)
    {
        "tpope/vim-fugitive",
        cmd  = { "Git", "Gwrite", "Gread" },
        keys = { { "<leader>gb", ":Git blame<CR>", silent = true, desc = "Git blame" } },
    },

    -- vim-flog: git branch viewer (depends on vim-fugitive)
    {
        "rbong/vim-flog",
        cmd          = { "Flog", "Flogsplit" },
        dependencies = { "tpope/vim-fugitive" },
    },
}
