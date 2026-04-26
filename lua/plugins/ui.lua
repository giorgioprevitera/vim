return {
    { "stevearc/dressing.nvim", event = "VeryLazy" },

    {
        "folke/which-key.nvim",
        event  = "VeryLazy",
        config = function()
            require("which-key").setup({ plugins = { spelling = { enabled = true } } })
        end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main   = "ibl",
        event  = "BufReadPost",
        config = function()
            require("ibl").setup({})
        end,
    },

    {
        "folke/noice.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        event        = "VeryLazy",
        config       = function()
            require("noice").setup({
                cmdline = { enabled = false },
                messages = { enabled = false },
                popupmenu = { enabled = false },
                lsp = {
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"]                = true,
                    },
                },
                presets = {
                    long_message_to_split = true,
                    lsp_doc_border        = false,
                },
            })
        end,
    },

    {
        "hoob3rt/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        event        = "VeryLazy",
        config       = function()
            local lualine = require("lualine")

            local colors = {
                bg       = "#202328",
                fg       = "#bbc2cf",
                yellow   = "#ECBE7B",
                cyan     = "#008080",
                darkblue = "#081633",
                green    = "#98be65",
                orange   = "#FF8800",
                violet   = "#a9a1e1",
                magenta  = "#c678dd",
                blue     = "#51afef",
                red      = "#ec5f67",
            }

            local conditions = {
                buffer_not_empty = function()
                    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
                end,
                hide_in_width = function()
                    return vim.fn.winwidth(0) > 80
                end,
            }

            local function show_macro_recording()
                local recording_register = vim.fn.reg_recording()
                if recording_register == "" then
                    return ""
                else
                    return "Recording @" .. recording_register
                end
            end

            local config = {
                options = {
                    component_separators = "",
                    section_separators   = "",
                    theme                = "auto",
                },
                sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_y = {},
                    lualine_z = {},
                    lualine_c = {},
                    lualine_x = {},
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_y = {},
                    lualine_z = {},
                    lualine_c = {},
                    lualine_x = {},
                },
            }

            local function ins_left(component)
                table.insert(config.sections.lualine_c, component)
            end

            local function ins_right(component)
                table.insert(config.sections.lualine_x, component)
            end

            ins_left { "macro-recording", fmt = show_macro_recording }

            ins_left {
                function() return "▊" end,
                color   = { fg = colors.blue },
                padding = { left = 0, right = 1 },
            }

            ins_left {
                function() return "" end,
                color = function()
                    local mode_color = {
                        n  = colors.red,    i  = colors.green,  v  = colors.blue,
                        [""] = colors.blue, V  = colors.blue,   c  = colors.magenta,
                        no = colors.red,    s  = colors.orange, S  = colors.orange,
                        ic = colors.yellow, R  = colors.violet, Rv = colors.violet,
                        cv = colors.red,    ce = colors.red,    r  = colors.cyan,
                        rm = colors.cyan,   ["r?"] = colors.cyan, ["!"] = colors.red,
                        t  = colors.red,
                    }
                    return { fg = mode_color[vim.fn.mode()] }
                end,
                padding = { right = 1 },
            }

            ins_left { "branch", icon = "", color = { fg = colors.violet, gui = "bold" } }

            ins_left {
                "filename",
                cond  = conditions.buffer_not_empty,
                color = { fg = colors.magenta, gui = "bold" },
            }

            ins_left { "filesize", cond = conditions.buffer_not_empty }

            ins_left { function() return "%=" end }

            ins_left {
                function()
                    local clients = vim.lsp.get_clients({ bufnr = 0 })
                    if #clients == 0 then return "No Active Lsp" end
                    local names = {}
                    for _, client in ipairs(clients) do
                        table.insert(names, client.name)
                    end
                    return table.concat(names, ", ")
                end,
                icon  = " LSP:",
                color = { fg = "#ffffff", gui = "bold" },
            }

            ins_right {
                "diagnostics",
                sources          = { "nvim_diagnostic" },
                symbols          = { error = " ", warn = " ", info = " " },
                diagnostics_color = {
                    color_error = { fg = colors.red },
                    color_warn  = { fg = colors.yellow },
                    color_info  = { fg = colors.cyan },
                },
            }

            ins_right {
                "diff",
                symbols    = { added = " ", modified = " ", removed = " " },
                diff_color = {
                    added    = { fg = colors.green },
                    modified = { fg = colors.orange },
                    removed  = { fg = colors.red },
                },
                cond = conditions.hide_in_width,
            }

            ins_right { "location" }
            ins_right { "progress", color = { fg = colors.fg, gui = "bold" } }
            ins_right { function() return "▊" end, color = { fg = colors.blue }, padding = { left = 1 } }

            lualine.setup(config)
        end,
    },

    {
        "romgrk/barbar.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        event        = "BufReadPost",
        config       = function()
            require("barbar").setup({
                sidebar_filetypes = { ["neo-tree"] = { event = "BufWipeout" } },
            })
        end,
        keys = {
            { "<A-,>", ":BufferPrevious<CR>",          silent = true, desc = "Previous buffer" },
            { "<A-.>", ":BufferNext<CR>",              silent = true, desc = "Next buffer" },
            { "<A-<>", ":BufferMovePrevious<CR>",      silent = true, desc = "Move buffer left" },
            { "<A->>", ":BufferMoveNext<CR>",          silent = true, desc = "Move buffer right" },
            { "<A-c>", ":BufferClose<CR>",             silent = true, desc = "Close buffer" },
            { "<A-o>", ":BufferCloseAllButCurrent<CR>", silent = true, desc = "Close other buffers" },
            { "<A-b>", ":BufferPick<CR>",              silent = true, desc = "Pick buffer" },
        },
    },

    {
        "utilyre/barbecue.nvim",
        dependencies = { "SmiteshP/nvim-navic", "kyazdani42/nvim-web-devicons" },
        event        = "BufReadPost",
        config       = function()
            require("barbecue").setup({ attach_navic = false, theme = "tokyonight" })
        end,
    },

    {
        "hedyhli/outline.nvim",
        cmd    = { "Outline", "OutlineOpen" },
        config = function() require("outline").setup() end,
        keys   = { { "<leader>so", "<cmd>Outline<CR>", desc = "Toggle outline" } },
    },

    {
        "DNLHC/glance.nvim",
        event  = "LspAttach",
        config = function() require("glance").setup() end,
    },

    {
        "folke/trouble.nvim",
        cmd  = { "Trouble" },
        config = function() require("trouble").setup({}) end,
        keys = {
            { "<leader>tr", ":Trouble diagnostics toggle<CR>", silent = true, desc = "Toggle trouble" },
            { "<leader>tn", function() require("trouble").next({ skip_groups = true, jump = true }) end, desc = "Trouble next" },
            { "<leader>tp", function() require("trouble").previous({ skip_groups = true, jump = true }) end, desc = "Trouble prev" },
        },
    },
}
