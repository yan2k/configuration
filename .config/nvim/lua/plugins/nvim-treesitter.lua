return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter.configs").setup({

      ensure_installed = { "lua", "markdown", "markdown_inline" },
      sync_install = false,
      indent = { enable = true },
      auto_install = true,
      highlight = {
        enable = true,

        -- Disable Treesitter for large files
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      }
    })

  end
}
