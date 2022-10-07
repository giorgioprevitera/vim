require("zk").setup({
  picker = "telescope",
})

-- nnoremap <leader>zn :ZkNotes<CR>
-- nnoremap <leader>za :ZkNew<CR>
-- nnoremap <leader>zf :lua require('telescope.builtin').live_grep({search_dirs = {vim.env.ZK_NOTEBOOK_DIR}})<CR>
-- vim.api.nvim_set_keymap("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>", {})

local opts = { noremap=true, silent=false }

vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNotes<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>za", "<Cmd>ZkNew<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zf", "<Cmd> lua require('telescope.builtin').live_grep({search_dirs={vim.env.ZK_NOTEBOOK_DIR}})<CR>", opts)
