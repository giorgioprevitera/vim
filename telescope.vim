"--------------------------------------------------
" Telescope
"--------------------------------------------------

lua<<EOF
local actions = require("telescope.actions")

require("telescope").setup({
  pickers = {
    live_grep = {
      only_sort_text = true
    }
  },
  defaults = {
    theme = "dropdown",
    mappings = {
      i = { ["<esc>"] = actions.close, },
    },
  },
})
EOF

nnoremap <C-t> :Telescope<CR>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fa <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader>fd <cmd> lua require('telescope.builtin').lsp_definitions()<cr>

lua<<EOF
function MyTelescopeLspCodeActions()
  local theme = require('telescope.themes').get_cursor()
  theme ['layout_config']['height'] = 10
  require('telescope.builtin').lsp_code_actions(theme)
end
function MyTelescopeLspReferences()
  local theme = require('telescope.themes').get_dropdown()
  theme ['layout_config']['width'] = 200
  require('telescope.builtin').lsp_references(theme)
end
EOF
nnoremap <leader>ca :lua MyTelescopeLspCodeActions()<CR>
nnoremap <leader>fr :lua MyTelescopeLspReferences()<CR>
