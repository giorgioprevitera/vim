return {
    { "nvim-neotest/neotest-python" },
    { "fredrikaverpil/neotest-golang" },

    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
            "fredrikaverpil/neotest-golang",
        },
        config = function()
            -- Per-namespace diagnostic formatting for neotest output
            local neotest_ns = vim.api.nvim_create_namespace("neotest")
            vim.diagnostic.config({
                virtual_text = {
                    format = function(diagnostic)
                        return diagnostic.message
                            :gsub("\n", " ")
                            :gsub("\t", " ")
                            :gsub("%s+", " ")
                            :gsub("^%s+", "")
                    end,
                },
            }, neotest_ns)

            require("neotest").setup({
                adapters = {
                    require("neotest-python"),
                    require("neotest-golang")(),
                },
            })
        end,
        keys = {
            { "<leader>nr", ":Neotest run last<CR>",  silent = true, desc = "Neotest run last" },
            { "<leader>nt", ":Neotest summary<CR>",   silent = true, desc = "Neotest summary" },
        },
    },
}
