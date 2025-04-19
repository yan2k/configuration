return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options = {
      icons_enabled = true,
      theme = "auto",
      component_seperators = "",
      section_separators = { left = "", right = "" },
      disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
    }
    opts.sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
      lualine_b = { "filename", "branch" },
      lualine_c = {
        "%=", --[[ add your center compoentnts here in place of this comment ]]
      },
      lualine_x = {},
      lualine_y = { "filetype", "progress" },
      lualine_z = {
        { "location", separator = { right = "" }, left_padding = 2 },
      },
    }
  end,
}
