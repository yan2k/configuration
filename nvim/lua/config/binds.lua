vim.g.mapleader = " "

local bind = vim.keymap.set


bind({ "n", "v", "x" }, "<leader>v", "<Cmd>edit $MYVIMRC<CR>", { desc = "Edit " .. vim.fn.expand("$MYVIMRC")})


-- Oil
bind({ "n" }, "<leader>e", "<cmd>Oil<CR>")


-- Telescope
local function tele(fn, opts)
  return function() require("telescope.builtin")[fn](opts or {}) end
end

local function git_files()
  require("telescope.builtin").find_files({ no_ignore = true })
end

bind({ "n" }, "<leader>f",  tele("find_files"),                { desc = "Find files" })
bind({ "n" }, "<leader>g",  tele("live_grep"),                 { desc = "Live grep" })
bind({ "n" }, "<leader>sg", git_files,                         { desc = "Find files (no ignore)" })
bind({ "n" }, "<leader>sb", tele("buffers"),                   { desc = "Buffers" })
bind({ "n" }, "<leader>si", tele("grep_string"),               { desc = "Grep string" })
bind({ "n" }, "<leader>so", tele("oldfiles"),                  { desc = "Old files" })
bind({ "n" }, "<leader>sh", tele("help_tags"),                 { desc = "Help tags" })
bind({ "n" }, "<leader>sm", tele("man_pages"),                 { desc = "Man pages" })
bind({ "n" }, "<leader>sr", tele("lsp_references"),            { desc = "LSP references" })
bind({ "n" }, "<leader>sd", tele("diagnostics"),               { desc = "Diagnostics" })
bind({ "n" }, "<leader>sT", tele("lsp_type_definitions"),      { desc = "LSP type definitions" })
bind({ "n" }, "<leader>ss", tele("current_buffer_fuzzy_find"), { desc = "Fuzzy find buffer" })
bind({ "n" }, "<leader>st", tele("builtin"),                   { desc = "Telescope builtins" })
bind({ "n" }, "<leader>sc", tele("git_bcommits"),              { desc = "Git buffer commits" })
bind({ "n" }, "<leader>sk", tele("keymaps"),                   { desc = "Keymaps" })
bind({ "n" }, "<leader>se", "<cmd>Telescope env<cr>",          { desc = "Env vars" })


-- Typst
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typst",
  callback = function()
    local file = vim.fn.expand("%:p")
    local pdf  = vim.fn.fnamemodify(file, ":r") .. ".pdf"

    -- start typst watch in background (once per file)
    vim.fn.jobstart({ "typst", "watch", file }, { detach = true })

    bind("n", "<leader>tp", function()
      vim.fn.jobstart({ "sioyek", pdf }, { detach = true })
    end, { buffer = true, desc = "Open PDF in sioyek" })
  end,
})


-- LSP (buffer-local, applied on attach)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf }
    bind("n", "gd",          tele("lsp_definitions"),    opts)
    bind("n", "gr",          tele("lsp_references"),     opts)
    bind("n", "gi",          tele("lsp_implementations"), opts)
    bind("n", "K",           vim.lsp.buf.hover,          opts)
    bind("n", "<leader>rn",  vim.lsp.buf.rename,         opts)
    bind("n", "<leader>ca",  vim.lsp.buf.code_action,    opts)
    bind("n", "<leader>de",  vim.diagnostic.open_float,                    opts)
    bind("n", "[d",          function() vim.diagnostic.jump({ count = -1 }) end, opts)
    bind("n", "]d",          function() vim.diagnostic.jump({ count =  1 }) end, opts)
  end,
})
