lua<<EOF

require('dapui').setup(
{
  layouts = {
    {
      elements = {
        'scopes',
        'breakpoints',
        --'stacks',
        --'watches',
      },
      size = 60,
      position = 'left',
    },
    {
      elements = {
        'repl',
        'console',
      },
      size = 10,
      position = 'bottom',
    },
  },
}
)

EOF
lua require('dap-go').setup()
lua require('dap-python').setup('~/.local/share/debugpy/bin/python')
lua require('dap-python').test_runner = 'pytest'

nnoremap <leader>du <cmd>lua require("dapui").toggle()<cr>
nnoremap <leader>dc <cmd>lua require('dap').continue()<cr>
nnoremap <leader>db <cmd>lua require('dap').toggle_breakpoint()<cr>
nnoremap <leader>dtg <cmd>lua require('dap-go').debug_test()<cr>
nnoremap <leader>dtp <cmd>lua require('dap-python').test_class()<cr>
nnoremap <leader>dsi <cmd>lua require('dap').step_into()<cr>
nnoremap <leader>dso <cmd>lua require('dap').step_over()<cr>
nnoremap <leader>ds <cmd>lua require('dap').close()<cr>

" vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
