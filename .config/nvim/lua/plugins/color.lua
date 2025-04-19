return {
  { "tiagovla/tokyodark.nvim" },
  { "sainnhe/sonokai" },
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
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
}
