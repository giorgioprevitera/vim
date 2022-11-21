require("noice").setup({
  presets = {
    -- you can enable a preset by setting it to true, or a table that will override the preset config
    -- you can also add custom presets that you can enable/disable with enabled=true
    bottom_search = false, -- use a classic bottom cmdline for search
    command_palette = false, -- position the cmdline and popupmenu together
    long_message_to_split = false, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
  },

  -- messages = {
  --   -- NOTE: If you enable noice messages UI, noice cmdline UI is enabled
  --   -- automatically. You cannot enable noice messages UI only.
  --   -- It is current neovim implementation limitation.  It may be fixed later.
  --   enabled = false, -- disable if you use native messages UI
  -- },
  -- routes = {
  --   {
  --     filter = {
  --       event = "msg_show",
  --       kind = "",
  --       find = "written",
  --     },
  --     opts = { skip = true },
  --   },
  -- {
  --   view = "notify",
  --   opts = { skip = true },
  -- },
  -- },
  -- popupmenu = {
  --   enabled = true,
  -- },
  -- notify = {
  --   -- Noice can be used as `vim.notify` so you can route any notification like other messages
  --   -- Notification messages have their level and other properties set.
  --   -- event is always "notify" and kind can be any log level as a string
  --   -- The default routes will forward notifications to nvim-notify
  --   -- Benefit of using Noice for this is the routing and consistent history view
  --   enabled = false,
  -- },

  -- {
  --   messages = {
  --     enabled = false,
  --   },
  -- },

  -- routes = {
  --   {
  --     filter = {
  --       event = "msg_show",
  --       ["not"] = {
  --         kind = { "confirm", "confirm_sub" },
  --       },
  --     },
  --     opts = { view = "mini" },
  --   },
  -- },

  views = {
    cmdline_popup = {
      border = {
        style = "none",
        padding = { 2, 3 },
      },
      filter_options = {},
      win_options = {
        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
      },
    },
  },

  lsp = {
    signature = {
      enabled = false,
    },
  },

})
