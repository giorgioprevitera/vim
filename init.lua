-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    local out = vim.fn.system({
        "git", "clone", "--filter=blob:none", "--branch=stable",
        "https://github.com/folke/lazy.nvim.git", lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
        }, true, {})
        vim.cmd("quit")
    end
end
vim.opt.rtp:prepend(lazypath)

-- Load config modules before plugins so options are set first
require("config.options")
require("config.autocmds")
require("config.keymaps")

-- Load all plugin specs from lua/plugins/*.lua
require("lazy").setup("plugins", {
    change_detection = { notify = false },
    install = { colorscheme = { "catppuccin" } },
    performance = {
        rtp = {
            disabled_plugins = { "gzip", "tarPlugin", "tohtml", "tutor", "zipPlugin" },
        },
    },
})

-- Load local overrides if present
local local_config = vim.fn.expand("~/.config/nvim/local.vim")
if vim.fn.filereadable(local_config) == 1 then
    vim.cmd("source " .. local_config)
end
