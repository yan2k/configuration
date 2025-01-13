return {
  'folke/persistence.nvim',
  events = "BufReadPre",
  opts = {
    -- Save sessions to ~/.local/state/nvim
    dir = vim.fn.stdpath('state') .. '/sessions/',
    need = 1,
    branch = true,
  }
}
