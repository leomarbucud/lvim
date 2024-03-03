vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.softtabstop = 4
vim.opt.wrap = false
vim.opt.undofile = true
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- pdv php documentation adding comment blocks
local home = os.getenv('HOME')
vim.g.pdv_template_dir = home .. "/.local/share/nvim/site/pack/packer/start/pdv/templates_snip"

-- transparent window
lvim.transparent_window = true

-- show full path in searching file
lvim.builtin.telescope.defaults = {
	find_command = { "fd", "-t=f", "-a" },
	path_display = { shorten = 1 },
}

lvim.builtin.telescope.pickers.buffers.initial_mode = "insert"

-- bookmark options
vim.g.bookmark_save_per_working_dir = 1;
vim.g.bookmark_auto_save = 1;
