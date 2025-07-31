return {
  "chomosuke/typst-preview.nvim",
  lazy = false, -- or ft = 'typst'
  version = "1.*",
  opts = {
    -- options are 'auto', 'always', 'never'
    invert_colors = '{"rest": "always", "image": "never"}',
  }, -- lazy.nvim will implicitly calls `setup {}`
}
