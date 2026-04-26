local map = vim.keymap.set
local opts = { silent = true }

-- Terraform docs lookup (was terraform.vim)
vim.api.nvim_create_user_command("Tfdoc", function(args)
    vim.fn.system("wslview $(tfdoc -u " .. args.args .. ")")
end, { nargs = "*" })
map("n", "<Leader>tfr", ":Tfdoc <C-R><C-W><CR>", opts)
map("n", "<Leader>tfd", ":Tfdoc -d <C-R><C-W><CR>", opts)

-- Macro register (was macros.vim)
vim.fn.setreg("g", "$/push\t/httpgx")
