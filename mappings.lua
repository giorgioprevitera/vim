local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local opts = { noremap = true, silent = true }

-- Mappings.
buf_set_keymap('i', '<C-F>t', '<Esc>:CtrlSFToggle<CR>', opts)
buf_set_keymap('<C-F>o',':CtrlSFOpen<CR>', opts)

buf_set_keymap('<C-F>t ',':CtrlSFToggle<CR>', opts)
buf_set_keymap('<leader>gb',':Git blame<CR>', opts)

-- nnoremap <leader>go :Neogit<CR>
-- nnoremap <leader>n :Navbuddy<CR>
-- nnoremap <leader>tn <cmd>lua require("trouble").next({skip_groups = true, jump = true})<CR>
-- nnoremap <leader>tp <cmd>lua require("trouble").previous({skip_groups = true, jump = true})<CR>
-- nnoremap <leader>tr :TroubleToggle<CR>
-- nnoremap <silent>    <A-,> :BufferPrevious<CR>
-- nnoremap <silent>    <A-.> :BufferNext<CR>
-- nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
-- nnoremap <silent>    <A->> :BufferMoveNext<CR>
-- nnoremap <silent>    <A-b> :BufferPick<CR>
-- nnoremap <silent>    <A-c> :BufferClose<CR>
-- nnoremap <silent>    <A-o> :BufferCloseAllButCurrent<CR>
-- nnoremap <silent> <leader>dvc :DiffviewClose<CR>
-- nnoremap <silent> <leader>dvf :DiffviewFileHistory %<CR>
-- nnoremap <silent> <leader>dvo :DiffviewOpen<CR>
-- nnoremap <silent> <leader>p :Neotree toggle filesystem left<CR>
-- nnoremap <silent> <leader>rf :Neotree reveal<CR>
-- nnoremap <silent> <leader>rg :Neotree reveal git_status<CR>
-- nnoremap S <cmd>lua require("flash").treesitter()<CR>
-- nnoremap s <cmd>lua require("flash").jump()<CR>
-- noremap  <silent> <M-`> :FloatermToggle<CR>
-- noremap! <silent> <M-`> <Esc>:FloatermToggle<CR>

-- tnoremap <silent> <C-W>L <C-\><C-n><C-W>L<CR>
-- tnoremap <silent> <C-W>h <C-\><C-n><C-W>h
-- tnoremap <silent> <C-W>k <C-\><C-n><C-W>k
-- tnoremap <silent> <M-`> <C-\><C-n>:FloatermToggle<CR>
-- tnoremap <silent> <M-z> <C-\><C-n>:FloatermUpdate --width=0.9 --height=0.9<CR>

-- vnoremap <silent> <leader>dvf :DiffviewFileHistory %<CR>


