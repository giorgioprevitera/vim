local opts = { silent = true }

-- Mappings.
vim.keymap.set('i', '<C-F>t', '<Esc>:CtrlSFToggle<CR>', opts)
vim.keymap.set('n', '<C-F>o', ':CtrlSFOpen<CR>', opts)
vim.keymap.set('n', '<C-F>t', ':CtrlSFToggle<CR>', opts)
vim.keymap.set('n', '<C-F>w', ':CtrlSFCwordPath<CR>', opts)
vim.keymap.set('n', '<C-F>p', ':CtrlSFPwordPath<CR>', opts)
vim.keymap.set('n', '<C-F><C-S>', '<Plug>CtrlSFPrompt', opts)
vim.keymap.set('v', '<C-F><C-S>', '<Plug>CtrlSFVwordPath', opts)
vim.keymap.set('n', '<C-F><C-F>', '<Plug>CtrlSFCwordPath<CR>', opts)
vim.keymap.set('v', '<C-F><C-F>', '<Plug>CtrlSFVwordExec', opts)


vim.keymap.set('n', '<leader>dt', require("dapui").toggle, opts)
vim.keymap.set('n', '<leader>dvc', ':DiffviewClose<CR>', opts)
vim.keymap.set('n', '<leader>dvo', ':DiffviewOpen<CR>', opts)
vim.keymap.set('n', '<leader>dvf', ':DiffviewFileHistory %<CR>', opts)
vim.keymap.set('v', '<leader>dvf', ':DiffviewFileHistory %<CR>', opts)
vim.keymap.set('n', '<leader>go', ':Neogit<CR>', opts)
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', opts)
vim.keymap.set('n', '<leader>nb', ':Navbuddy<CR>', opts)
vim.keymap.set('n', '<leader>nr', ':Neotest run last<CR>', opts)
vim.keymap.set('n', '<leader>nt', ':Neotest summary<CR>', opts)
vim.keymap.set('n', '<leader>p', ':Neotree toggle filesystem left<CR>', opts)
vim.keymap.set('n', '<leader>rf', ':Neotree reveal<CR>', opts)
vim.keymap.set('n', '<leader>rg', ':Neotree reveal git_status<CR>', opts)
vim.keymap.set('n', '<leader>so', '<cmd>Outline<CR>', opts)
vim.keymap.set('n', '<leader>tn', function() require("trouble").next({ skip_groups = true, jump = true }) end, opts)
vim.keymap.set('n', '<leader>tp', function() require("trouble").previous({ skip_groups = true, jump = true }) end, opts)
vim.keymap.set('n', '<leader>tr', ':Trouble diagnostics toggle<CR>', opts)


vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-.>', ':BufferNext<CR>', opts)
vim.keymap.set('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<A->>', ':BufferMoveNext<CR>', opts)
vim.keymap.set('n', '<A-c>', ':BufferClose<CR>', opts)
vim.keymap.set('n', '<A-o>', ':BufferCloseAllButCurrent<CR>', opts)
vim.keymap.set('n', '<A-b>', ':BufferPick<CR>', opts)


vim.keymap.set('n', 's', require("flash").jump, opts)
vim.keymap.set('n', 'S', require("flash").treesitter, opts)

-- noremap  <silent> <M-`> :FloatermToggle<CR>
-- noremap! <silent> <M-`> <Esc>:FloatermToggle<CR>
-- tnoremap <silent> <C-W>L <C-\><C-n><C-W>L<CR>
-- tnoremap <silent> <C-W>h <C-\><C-n><C-W>h
-- tnoremap <silent> <C-W>k <C-\><C-n><C-W>k
-- tnoremap <silent> <M-`> <C-\><C-n>:FloatermToggle<CR>
-- tnoremap <silent> <M-z> <C-\><C-n>:FloatermUpdate --width=0.9 --height=0.9<CR>

function MyTelescopeLspReferences()
    local opts = {
        preview = {
            hide_on_startup = false,
        },
    }
    local theme = require('telescope.themes').get_cursor(opts)
    theme['layout_config']['width'] = 160
    theme['layout_config']['height'] = 20
    require('telescope.builtin').lsp_references(theme)
end

-- vim.keymap.set('n', '<leader>fr', ':lua MyTelescopeLspReferences()<CR>')



vim.keymap.set('n', '<leader>fr',
    '<cmd>lua require("fzf-lua").lsp_references({winopts = { preview = { hidden = "nohidden" }}})<CR>')
vim.keymap.set('n', '<C-p>', '<cmd>lua require("fzf-lua").files()<CR>')
vim.keymap.set('n', '<C-t>', '<cmd>lua require("fzf-lua").builtin()<cr>')
vim.keymap.set('n', '<C-b>', '<cmd>lua require("fzf-lua").buffers()<cr>')
vim.keymap.set('n', '<leader>fa', '<cmd>lua require("fzf-lua").live_grep()<cr>')
vim.keymap.set('n', '<leader>ga', '<cmd>lua require("fzf-lua").git_branches()<cr>')
vim.keymap.set('n', '<leader>gc', '<cmd>lua require("fzf-lua").git_commits()<cr>')
vim.keymap.set('n', '<leader>gs', '<cmd>lua require("fzf-lua").git_status()<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>lua require("fzf-lua").command_history()<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd> lua require("fzf-lua").lsp_definitions()<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd> lua require("fzf-lua").lsp_document_symbols()<cr>')
vim.keymap.set('n', '<leader>c', '<cmd>lua require("fzf-lua").commands()<cr>')
