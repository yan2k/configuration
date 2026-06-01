for _, f in ipairs(vim.fn.glob(vim.fn.stdpath("config") .. "/lua/config/*.lua", false, true)) do
  local name = vim.fn.fnamemodify(f, ":t:r")
  if name ~= "init" then require("config." .. name) end
end

