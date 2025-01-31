return {
  'nvim-neorg/neorg',
  lazy = false,
  version = '*',
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Notes",
          },
          default_workspace = "notes",
        },
      },
    },
  },
}
