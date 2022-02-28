lua<<EOF
require("dapui").setup({
  sidebar = {
    elements = {
      { id = "scopes", size = 0.5 },
      { id = "breakpoints", size = 0.5 },
    },
    size = 60,
    position = "left", -- Can be "left", "right", "top", "bottom"
  }
})
EOF
lua require('dap-go').setup()
lua require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
lua require('dap-python').test_runner = 'pytest'

nnoremap <leader>du <cmd>lua require("dapui").toggle()<cr>
nnoremap <leader>dc <cmd>lua require('dap').continue()<cr>
nnoremap <leader>db <cmd>lua require('dap').toggle_breakpoint()<cr>
nnoremap <leader>dt <cmd>lua require('dap-go').debug_test()<cr>
nnoremap <leader>dsi <cmd>lua require('dap').step_into()<cr>
nnoremap <leader>dso <cmd>lua require('dap').step_over()<cr>
nnoremap <leader>ds <cmd>lua require('dap').close()<cr>
