local function isDirectoryInWhitelist()
  local buf_path = vim.fn.expand("%:p:h")
  local whitelist = {
    os.getenv("HOME") .. "/fun/",
    os.getenv("HOME") .. "/.dotfiles",
    os.getenv("HOME") .. "/.config/nvim",
  }

  for _, dir in ipairs(whitelist) do
    if string.sub(buf_path, 1, #dir) == dir then
      return true
    end
  end

  return false
end

return {
  "vyfor/cord.nvim",
  -- branch = "master",
  build = ":Cord update",
  opts = {
    editor = {
      client = "neovim",
      tooltip = "Vim",
    },
    text = {
      viewing = function(opts)
        return isDirectoryInWhitelist() and ("" .. opts.filename) or "Viewing a file"
      end,
      editing = function(opts)
        return isDirectoryInWhitelist() and ("Editing " .. opts.filename) or "Editing a file"
      end,
      workspace = function(opts)
        return isDirectoryInWhitelist() and ("Working on " .. opts.workspace) or "In a secret workspace"
      end,
    },
    assets = {
      netrw = {
        name = "Netrw",
        type = "file_browser",
      },
      Floaterm = {
        name = "Terminal",
        type = "termnial",
      },
    },
  },
}
