return {
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vague").setup({ transparent = true })
      vim.cmd("colorscheme vague")
      vim.cmd(":hi statusline guibg=NONE")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({ transparent = true })
      vim.cmd(":hi statusline guibg=NONE")
    end,
  },
}
