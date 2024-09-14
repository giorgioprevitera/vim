local neotest_ns = vim.api.nvim_create_namespace("neotest")
vim.diagnostic.config({
    virtual_text = {
        format = function(diagnostic)
            local message =
                diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
        end,
    },
}, neotest_ns)

require("neotest").setup({
    adapters = {
        require("neotest-python"),
        require("neotest-golang")(),
    }
})

require('dap-python').test_runner = 'pytest'
require('dap-python').resolve_python = function()
    return '/Users/giorgio/.asdf/shims/python'
end
