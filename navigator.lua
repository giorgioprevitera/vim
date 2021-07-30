require('navigator').setup({
    keymaps = {
      {key = "gt", func = "require('navigator.treesitter').buf_ts()"},
      {key = "gT", func = "require('navigator.treesitter').bufs_ts()"},
      -- {key = "ca", mode = "n", func = "code_action()"},
      -- {key = "ca", mode = "v", func = "range_code_action()"},
    },
    lsp = {
        format_on_save = true
    }
})
