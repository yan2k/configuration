vim.cmd([[set mouse=]])
vim.cmd([[set noswapfile]])

vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.undofile = true
vim.o.winborder = "rounded"

vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
	{ src = "https://github.com/nvim-mini/mini.icons"},
	{ src = "https://github.com/m4xshen/autoclose.nvim" },

	-- CORD
	{ src = "https://github.com/vyfor/cord.nvim" },
})


require("mason").setup()
require("mason-lspconfig").setup({})
require("mini.pick").setup()
require("oil").setup()
require("mini.icons").setup()
require("autoclose").setup()

vim.lsp.config["tinymist"] = {
	cmd = { "tinymist" },
	filetypes = { "typst" },
}


-- More Cord
require("cord").setup({
	editor = {
		tooltip = 'Nya nya~~',
		icon = 'https://avatars.fastly.steamstatic.com/874ea211a32204237d31986e59e88cefec6ef34a_medium.jpg',
	}
})

vim.api.nvim_create_autocmd('PackChanged', {
	callback = function(opts)
		if opts.data.spec.name == 'cord.nvim' and opts.data.kind == 'update' then
			vim.cmd 'Cord update'
		end
	end
})

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")
vim.keymap.set("n", "<leader>e", ":Oil<CR>")
vim.keymap.set("n", "<leader>v", ":e $MYVIMRC<CR>")
vim.keymap.set({"n", "v"}, "<leader>c", '1z=')
vim.keymap.set("n", "gx", function()
	local file = vim.fn.expand("<cfile>")
	vim.cmd("edit " .. file)
end, { noremap = true, silent = true}
)


-- Color
require("vague").setup({ transparent = true })
vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=none")
