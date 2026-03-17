return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      vim.lsp.config("lua_ls", {
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
      })

      -- Add/remove servers here as you install them via pacman
      vim.lsp.enable({
        "clangd",        -- pacman: clang
        "gopls",         -- pacman: gopls
        "pyright",       -- pacman: pyright
        "lua_ls",        -- pacman: lua-language-server
        "bashls",        -- pacman: bash-language-server
        "tinymist",      -- pacman: tinymist
        "svelte",        -- pacman: svelte-language-server
        "tailwindcss",   -- pacman: tailwindcss-language-server
        "rust_analyzer", -- pacman: rust-analyzer
      })
    end,
  },
}
