vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.softtabstop = 4
vim.opt.undofile = true
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- pdv php documentation adding comment blocks
local home = os.getenv('HOME')
vim.g.pdv_template_dir = home .. "/.local/share/nvim/site/pack/packer/start/pdv/templates_snip"
