return {
  "goolord/alpha-nvim",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim'
  },
  config = function()
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.buttons.val = {
      dashboard.button("<spc> f f", "  Find file", "<cmd> Telescope find_files <CR>"),
      dashboard.button("<spc> n f", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("<spc> f t", "  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("<spc> f r", "  Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("<spc> f .", "  Configuration",
        function()
          require('telescope.builtin').find_files({
            hidden = false,
            git = { ignore = false },
            cwd = vim.fn
                .stdpath('config')
          })
        end),
      dashboard.button("s", "  Restore Session", function() require('persistence').load({ last = true }) end),
      dashboard.button("L", "󰒲  Open Lazy", ":Lazy <CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    require('alpha').setup(dashboard.config)
  end,
}
