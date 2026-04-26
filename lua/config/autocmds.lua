local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Format on save
augroup("fmt", { clear = true })
autocmd("BufWritePre", {
    group = "fmt",
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

-- File type detection (deduplicated — init.vim had *.sh.tpl set 3×, terraform 2×)
augroup("filetypes", { clear = true })

autocmd({ "BufRead", "BufNewFile" }, {
    group   = "filetypes",
    pattern = { "Jenkinsfile*", "*.jobdsl" },
    command = "set filetype=groovy",
})

autocmd({ "BufRead", "BufNewFile" }, {
    group   = "filetypes",
    pattern = { "Dockerfile*" },
    command = "set filetype=Dockerfile",
})

-- *.sh.tpl: consolidated from 3 duplicates in init.vim
autocmd({ "BufRead", "BufNewFile" }, {
    group   = "filetypes",
    pattern = "*.sh.tpl",
    callback = function()
        vim.bo.filetype = "sh"
        vim.bo.syntax   = "sh"
    end,
})

-- Terragrunt / Terraform (was duplicated in init.vim)
autocmd({ "BufRead", "BufNewFile" }, {
    group   = "filetypes",
    pattern = { "terragrunt.hcl", "*.tfvars" },
    command = "set filetype=terraform",
})

autocmd("FileType", {
    group   = "filetypes",
    pattern = "terraform",
    command = "setlocal commentstring=#\\ %s",
})

-- Helm
autocmd({ "BufRead", "BufNewFile" }, {
    group   = "filetypes",
    pattern = {
        "*/templates/*.yml",
        "*/templates/*.yaml",
        "*/templates/*.tpl",
        "*.gotmpl",
        "helmfile*.yaml",
    },
    command = "set filetype=helm",
})

-- Go templates
autocmd({ "BufRead", "BufNewFile" }, {
    group   = "filetypes",
    pattern = "*.tmpl",
    command = "set filetype=html",
})

-- Macro recording refresh for lualine
augroup("lualine_macro", { clear = true })
autocmd("RecordingEnter", {
    group    = "lualine_macro",
    callback = function() require("lualine").refresh() end,
})
autocmd("RecordingLeave", {
    group    = "lualine_macro",
    callback = function()
        local timer = vim.uv.new_timer()
        timer:start(50, 0, vim.schedule_wrap(function() require("lualine").refresh() end))
    end,
})
