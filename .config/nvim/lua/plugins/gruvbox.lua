return {
  "ellisonleao/gruvbox.nvim",
  opts = {},
  config = function(_, opts)
    require("gruvbox").setup({
      terminal_colors = true,
      bold = true,
      contrast = "soft",
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
