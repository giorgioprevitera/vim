vim.fn.sign_define('DapBreakpoint', { text = '🛑', texthl = '', linehl = '', numhl = '' })

require('dap-python').setup('/home/giorgio/.asdf/shims/python')
require('dap-python').test_runner = 'pytest'
require('dap-python').resolve_python = function()
    return '/home/giorgio/.asdf/shims/python'
end
require('dap-go').setup()
require("dapui").setup()
require("mason-nvim-dap").setup()
