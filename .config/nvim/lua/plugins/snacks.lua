return {
  "folke/snacks.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  priority = 1000,
  ---@type snacks.Config
  opts = {
    dashboard = { enabled = true },
    lazygit = {
      enabled = true,
      win = {
        style = "terminal",
      },
    },
    explorer = {
      enabled = true,
      layout = "default",
    },
    input = {
      enabled = true,
    },
    indent = {
      enabled = true,
    },
    notifier = {
      enabled = true,
    },
    terminal = {
      enabled = true,
      win = {
        position = "float",
        style = "terminal",
        border = "rounded",
        bo = {
          filetype = "snacks_terminal",
        },
      },
    },
  },
  keys = {
    {
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>ft",
      function()
        Snacks.terminal()
      end,
    },
    {
      "<leader>fp",
      function()
        Snacks.picker.projects({
          ---@class snacks.picker.projects.Config: snacks.picker.Config
          finder = "recent_projects",
          patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "package.json", "Makefile" },
          recent = true,
          format = "file",
          dev = { "~/Developer", "~/fun" },
        })
      end,
    },
    {
      "<leader>fe",
      function()
        Snacks.picker.explorer(
          --@class snacks.picker.explorer.Config
          {
            layout = { preset = "default" },
            follow_file = true,
            auto_close = true,
          }
        )
      end,
      desc = "Explorer Snacks",
    },
    {
      "<leader>fE",
      ---Snacks.picker.files
      function()
        Snacks.picker.explorer(
          --@class snacks.picker.explorer.Config
          {
            layout = { preset = "default" },
            auto_close = true,
          }
        )
      end,
      desc = "Explorer Snacks (hidden files)",
    },
    { "<leader>e", "<leader>fe", desc = "Explorer Snacks (pwd)", remap = true },
    { "<leader>E", "<leader>fE", desc = "Explorer Snacks (root dir)", remap = true },
    { "<leader>p", "<leader>fp", desc = "Recent Projects Snacks", remap = true },
  },
}
