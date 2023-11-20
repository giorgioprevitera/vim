local actions = require("telescope.actions")
local actions_layout = require("telescope.actions.layout")
local present, telescope = pcall(require, "telescope")

local trouble = require("trouble.providers.telescope")

if not present then
    return
end

telescope.setup({
    pickers = {
        colorscheme = {
            enable_preview = true
        },
        live_grep = {
            only_sort_text = true,
            additional_args = function(opts)
                return { "--hidden" }
            end
        },
        find_files = {
            hidden = true
        },
        buffers = {
            mappings = {
                i = {
                    ["<c-d>"] = actions.delete_buffer + actions.move_to_top,
                }
            }
        }
    },
    defaults = {
        mappings = {
            n = {
                ["<C-h>"] = actions_layout.toggle_preview,
                ["<c-t>"] = trouble.open_with_trouble,
            },
            i = {
                ["<esc>"] = actions.close,
                ["<C-h>"] = actions_layout.toggle_preview,
                ["<c-t>"] = trouble.open_with_trouble,
            },
        },
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        -- prompt_prefix = "   ",
        -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },

        border = {},
        preview = {
            hide_on_startup = true,
        },
        color_devicons = true,
        entry_prefix = "  ",
        file_ignore_patterns = { ".git/" },
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        -- file_sorter = require("telescope.sorters").get_fuzzy_file,
        -- generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        initial_mode = "insert",
        layout_strategy = "horizontal",
        path_display = { "truncate" },
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        selection_caret = "  ",
        selection_strategy = "reset",
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        sorting_strategy = "ascending",
        theme = "dropdown",
        use_less = true,
        winblend = 0,
    },
    -- extensions = {
    --   file_browser = {
    --     theme = "ivy",
    --     mappings = {
    --       ["i"] = {
    --         -- your custom insert mode mappings
    --       },
    --       ["n"] = {
    --         -- your custom normal mode mappings
    --       },
    --     },
    --   },
    -- },
})

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

vim.keymap.set('n', '<leader>fr', ':lua MyTelescopeLspReferences()<CR>')
vim.keymap.set('n', '<C-t>', '<cmd>lua require("telescope.builtin").builtin()<cr>')
vim.keymap.set('n', '<C-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>')
vim.keymap.set('n', '<C-b>', '<cmd>lua require("telescope.builtin").buffers()<cr>')
vim.keymap.set('n', '<leader>fa', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
vim.keymap.set('n', '<leader>fgb', '<cmd>lua require("telescope.builtin").git_branches()<cr>')
vim.keymap.set('n', '<leader>fgc', '<cmd>lua require("telescope.builtin").git_commits()<cr>')
vim.keymap.set('n', '<leader>fgs', '<cmd>lua require("telescope.builtin").git_status()<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>lua require("telescope.builtin").command_history()<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd> lua require("telescope.builtin").lsp_definitions()<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd> lua require("telescope.builtin").lsp_document_symbols()<cr>')
vim.keymap.set('n', '<leader>c', '<cmd>lua require("telescope.builtin").commands()<cr>')

-- local extensions = { "themes", "terms", "file_browser" }
-- for _, ext in ipairs(extensions) do
--    telescope.load_extension(ext)
-- end


-- telescope.load_extension "file_browser"
-- telescope.load_extension "themes"
-- telescope.load_extension "terms"

-- local cmd = vim.cmd
-- local bg = function(group, col)
-- cmd("hi " .. group .. " guibg=" .. col)
-- end
-- local fg_bg = function(group, fgcol, bgcol)
-- cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
-- end
-- local fg = function(group, col)
--    cmd("hi " .. group .. " guifg=" .. col)
-- end

-- fg_bg("TelescopeBorder", darker_black, darker_black)
-- hi TelescopePromptBorder guifg=black2 guibg=black2
-- hi TelescopePromptNormal guifg=white guibg=black2
-- hi TelescopePromptPrefix guifg=red guibg=black2
-- hi TelescopePreviewTitle guifg=black guibg=green
-- hi TelescopePromptTitle guifg=black guibg=red
-- hi TelescopeResultsTitle guifg=darker_black guibg=darker_black
-- hi TelescopeNorma guibg=darker_black
-- hi TelescopeSelectio guibg=black2


-- " hi TelescopeBorder guifg=darker_black guibg=darker_black
-- " hi TelescopePromptBorder guifg=black2 guibg=black2
-- " hi TelescopePromptNormal guifg=white guibg=black2
-- " hi TelescopePromptPrefix guifg=red guibg=black2
-- " hi TelescopePreviewTitle guifg=black guibg=green
-- " hi TelescopePromptTitle guifg=black guibg=red
-- " hi TelescopeResultsTitle guifg=darker_black guibg=darker_black
-- " hi TelescopeNormal guibg=darker_black
-- " hi TelescopeSelection guibg=black2


-- function MyTelescopeLspCodeActions()
--   local theme = require('telescope.themes').get_cursor()
--   theme ['layout_config']['height'] = 10
--   require('telescope.builtin').lsp_code_actions(theme)
-- end

-- function MyTelescopeLspPeekDefinition()
--   local theme = require('telescope.themes').get_dropdown()
--   --theme ['layout_config']['height'] = 10
--   theme.jump_type = "never"
--   -- require('telescope.builtin').lsp_definitions(theme) { jump_type = "never" }
--   require('telescope.builtin').lsp_definitions(theme)
-- end
