local actions = require("fzf-lua").actions
require('fzf-lua').setup {
    'borderless_full',
    winopts = {
        preview = {
            hidden = "hidden"
        }
    },
    keymap = {
        builtin = {
            ["<F1>"]     = "toggle-help",
            ["<F2>"]     = "toggle-fullscreen",
            -- Only valid with the 'builtin' previewer
            ["<F3>"]     = "toggle-preview-wrap",
            ["<C-h>"]    = "toggle-preview",
            ["<F5>"]     = "toggle-preview-ccw",
            ["<F6>"]     = "toggle-preview-cw",
            ["<C-d>"]    = "preview-page-down",
            ["<C-u>"]    = "preview-page-up",
            ["<S-left>"] = "preview-page-reset",
        },
        fzf     = {
            ["ctrl-z"] = "abort",
            ["ctrl-f"] = "half-page-down",
            ["ctrl-b"] = "half-page-up",
            ["ctrl-a"] = "beginning-of-line",
            ["ctrl-e"] = "end-of-line",
            ["alt-a"]  = "toggle-all",
            -- Only valid with fzf previewers (bat/cat/git/etc)
            ["f3"]     = "toggle-preview-wrap",
            ["ctrl-h"] = "toggle-preview",
            ["ctrl-d"] = "preview-page-down",
            ["ctrl-u"] = "preview-page-up",
            ["ctrl-q"] = "select-all+accept",
        },
    },
    actions = {
        files = {
            ["enter"]  = actions.file_edit_or_qf,
            ["ctrl-x"] = actions.file_split,
            ["ctrl-s"] = actions.file_vsplit,
            ["ctrl-t"] = actions.file_tabedit,
            ["alt-q"]  = actions.file_sel_to_qf,
        },
    },
    buffers = {
        keymap = { builtin = { ["<C-d>"] = false } },
        actions = {
            ["ctrl-x"] = actions.file_split,
            ["ctrl-d"] = { actions.buf_del, actions.resume }
        },
    },
}
