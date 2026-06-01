  for _, f in ipairs(vim.fn.glob(vim.fn.stdpath("config") .. "/lua/plugins/*.lua", false, true)) do
    local name = vim.fn.fnamemodify(f, ":t:r")
    if name ~= "init" then require("plugins." .. name) end
  end
