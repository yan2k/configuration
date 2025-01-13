return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets'
  },
  version = "v0.10.*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'default',

      ['<C-n>'] = { 'select_next', 'fallback' },
      ['<C-p>'] = { 'select_prev', 'fallback' },

      ['<C-e>'] = {},

      ['<C-Space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    completion = {
      trigger = {
        show_on_insert_on_trigger_character = true
      }
    },

    signature = { enabled = true },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

  },

  opts_extend = { "sources.default" }
}
