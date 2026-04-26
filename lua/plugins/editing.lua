return {
    { "tpope/vim-surround" },


    -- vim-visual-multi config is in config/options.lua (g.VM_maps)
    { "mg979/vim-visual-multi", branch = "master" },

    {
        "MagicDuck/grug-far.nvim",
        cmd  = { "GrugFar" },
        keys = {
            { "<C-F><C-S>", function() require("grug-far").open() end, desc = "Grug-far search" },
            { "<C-F><C-F>", function()
                require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
            end, desc = "Grug-far search word" },
        },
    },

    { "kevinhwang91/nvim-bqf",      ft   = "qf" },
    { "mechatroner/rainbow_csv" },

    {
        "iamcco/markdown-preview.nvim",
        ft    = "markdown",
        build = "cd app && yarn install",
    },
    { "mzlogin/vim-markdown-toc", ft = "markdown" },

    { "towolf/vim-helm", ft = "helm" },

    {
        "fatih/vim-go",
        ft    = "go",
        build = ":GoUpdateBinaries",
    },

    {
        "voldikss/vim-floaterm",
        cmd  = { "FloatermToggle", "FloatermNew", "FloatermUpdate" },
        init = function()
            vim.g.floaterm_width  = 0.9
            vim.g.floaterm_height = 0.9
        end,
        keys = {
            { "<M-`>", ":FloatermToggle<CR>",  mode = { "n", "i" }, silent = true, desc = "Toggle floaterm" },
            { "<M-`>", "<C-\\><C-n>:FloatermToggle<CR>", mode = "t", silent = true },
            { "<M-z>", "<C-\\><C-n>:FloatermUpdate --width=0.9 --height=0.9<CR>", mode = "t", silent = true },
            { "<C-W>k", "<C-\\><C-n><C-W>k", mode = "t", silent = true },
            { "<C-W>h", "<C-\\><C-n><C-W>h", mode = "t", silent = true },
        },
    },
}
