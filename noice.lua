require("noice").setup({
  routes = {
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "written",
      },
      opts = { skip = true },
    },
    -- {
    --   view = "notify",
    --   opts = { skip = true },
    -- },
  },
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
})
