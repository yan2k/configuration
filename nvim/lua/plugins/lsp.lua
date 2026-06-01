return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local lspconfig = require('lspconfig')

      local custom = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              diagnostics = { globals = { "vim" } },
            },
          },
        },
      }

      for _, name in ipairs(lspconfig.util.available_servers()) do
        lspconfig[name].setup(custom[name] or {})
      end
    end,
  },
}
