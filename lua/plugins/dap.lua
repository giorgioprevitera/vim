return {
    { "mfussenegger/nvim-dap", lazy = true },
    { "nvim-neotest/nvim-nio", lazy = true },

    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config       = function()
            vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
            require("dapui").setup()
        end,
        keys = { { "<leader>dt", function() require("dapui").toggle() end, desc = "DAP UI toggle" } },
    },

    {
        "leoluz/nvim-dap-go",
        ft     = "go",
        config = function() require("dap-go").setup() end,
    },

    {
        "mfussenegger/nvim-dap-python",
        ft     = "python",
        config = function()
            local dap_python = require("dap-python")
            dap_python.setup("/Users/giorgio/.local/share/nvim-venv/bin/python")
            dap_python.test_runner   = "pytest"
            dap_python.resolve_python = function()
                return "/Users/giorgio/.local/share/nvim-venv/bin/python"
            end
        end,
    },

    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = { "mason-org/mason.nvim", "mfussenegger/nvim-dap" },
        config       = function() require("mason-nvim-dap").setup() end,
    },
}
