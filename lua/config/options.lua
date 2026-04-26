local opt = vim.opt

-- Prepend mason's bin dir so vim.lsp.config can find mason-installed servers
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

-- UI
opt.termguicolors = true
opt.background    = "dark"
opt.number        = true
opt.cursorline    = true
opt.laststatus    = 3      -- global statusline
opt.fillchars:append({ diff = "╱", eob = " ", fold = " ", foldopen = "▾", foldsep = "│", foldclose = "▸" })

-- Mouse / clipboard
opt.mouse     = "a"
opt.clipboard = "unnamedplus"

-- Indentation
opt.expandtab   = true
opt.shiftwidth  = 4
opt.softtabstop = 4

-- Search
opt.inccommand = "split"
opt.smartcase  = true
opt.ignorecase = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Wrapping
opt.wrap      = false
opt.linebreak = true

-- Grep
opt.grepprg = "rg --vimgrep --no-heading --smart-case"

-- Folding (native treesitter-based)
opt.foldmethod    = "expr"
opt.foldexpr      = "v:lua.vim.treesitter.foldexpr()"
opt.foldtext      = ""    -- show real line content instead of "--- N lines"
opt.foldlevel     = 99
opt.foldlevelstart = 99
opt.foldenable    = true
opt.foldcolumn    = "1"

-- Python host
vim.g.python3_host_prog = vim.fn.expand("~/.local/share/nvim-venv/bin/python")

-- vim-visual-multi
vim.g.VM_maps = {
    ["Add Cursor Down"] = "<C-j>",
    ["Add Cursor Up"]   = "<C-k>",
}

-- Diagnostics: virtual_text is disabled by default in 0.11+; re-enable explicitly
vim.diagnostic.config({
    virtual_text = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN]  = " ",
            [vim.diagnostic.severity.HINT]  = " ",
            [vim.diagnostic.severity.INFO]  = " ",
        },
    },
})
