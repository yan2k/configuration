return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = ".", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
                __
___     ___    ___   __  __ /\_\    ___ ___
/ _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\
/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \
  \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
  \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      },
    },
    indent = { enabled = true },
    notifier = { enabled = true },
    lazygit = { enabled = true, configure = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>gf", function() Snacks.lazygit.log_file() end,      desc = "Lazygit Current File History" },
    { "<leader>gg", function() Snacks.lazygit() end,               desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end,           desc = "Lazygit Log (cwd)" },
    { "<leader>hn", function() Snacks.notifier.hide() end,         desc = "Dismiss All Notifications" },
    { "<leader>sn", function() Snacks.notifier.show_history() end, desc = "Notification History" },
  }
}
