"--------------------------------------------------
" Telescope
"--------------------------------------------------

lua<<EOF
local actions = require("telescope.actions")
local present, telescope = pcall(require, "telescope")

if not present then
   return
end


telescope.setup({
  pickers = {
    live_grep = {
      only_sort_text = true
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
      i = { ["<esc>"] = actions.close, },
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
    color_devicons = true,
    entry_prefix = "  ",
    file_ignore_patterns = { "^.git/" },
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
  extensions = {
    file_browser = {
      theme = "ivy",
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
    opener = {
      hidden = false, -- do not show hidden directories
      root_dir = "~/src/ee-covea", -- search from home directory by default
      respect_gitignore = true, -- respect .gitignore files
    },
  },
})

-- local extensions = { "themes", "terms", "file_browser" }
-- for _, ext in ipairs(extensions) do
--    telescope.load_extension(ext)
-- end


telescope.load_extension "file_browser"
telescope.load_extension "opener"
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

EOF

" hi TelescopeBorder guifg=darker_black guibg=darker_black
" hi TelescopePromptBorder guifg=black2 guibg=black2
" hi TelescopePromptNormal guifg=white guibg=black2
" hi TelescopePromptPrefix guifg=red guibg=black2
" hi TelescopePreviewTitle guifg=black guibg=green
" hi TelescopePromptTitle guifg=black guibg=red
" hi TelescopeResultsTitle guifg=darker_black guibg=darker_black
" hi TelescopeNormal guibg=darker_black
" hi TelescopeSelection guibg=black2

nnoremap <C-t> :Telescope<CR>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-b> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fa <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader>fd <cmd> lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>fs <cmd> lua require('telescope.builtin').lsp_workspace_symbols()<cr>
nnoremap <leader>c <cmd>lua require('telescope.builtin').commands()<cr>

lua<<EOF
function MyTelescopeLspCodeActions()
  local theme = require('telescope.themes').get_cursor()
  theme ['layout_config']['height'] = 10
  require('telescope.builtin').lsp_code_actions(theme)
end
function MyTelescopeLspReferences()
  local theme = require('telescope.themes').get_dropdown()
  theme ['layout_config']['width'] = 160
  require('telescope.builtin').lsp_references(theme)
end
function MyTelescopeLspPeekDefinition()
  local theme = require('telescope.themes').get_dropdown()
  --theme ['layout_config']['height'] = 10
  theme.jump_type = "never"
  -- require('telescope.builtin').lsp_definitions(theme) { jump_type = "never" }
  require('telescope.builtin').lsp_definitions(theme) 
end
EOF
" nnoremap <leader>ca :lua MyTelescopeLspCodeActions()<CR>
nnoremap <leader>fr :lua MyTelescopeLspReferences()<CR>
nnoremap <leader>fp :lua MyTelescopeLspPeekDefinition()<CR>
