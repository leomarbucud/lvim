-- nvim tree (file manager)
lvim.keys.normal_mode["<F2>"] = ":NvimTreeToggle<CR>"
-- buffer
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"

-- escape
lvim.keys.insert_mode["jk"] = "<ESC>"
lvim.keys.insert_mode["kj"] = "<ESC>"

-- saving
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<CR>"

-- debugging
lvim.keys.normal_mode["<F5>"] = ":lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F9>"] = ":lua require'dap'.toggle_breakpoint()<CR>"
lvim.keys.normal_mode["<F10>"] = ":lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F6>"] = ":lua require'dapui'.toggle({ reset = true })<CR> <BAR> :lua require'dap'.disconnect()<CR>"


-- restore session
lvim.keys.normal_mode["<Leader>r"] = ":lua require'persistence'.load()<CR>"

-- navigation with tmux
-- lvim.keys.normal_mode["<C-h>"] = ":TmuxNavigateLeft"
-- lvim.keys.normal_mode["<C-j>"] = ":TmuxNavigateDown"
-- lvim.keys.normal_mode["<C-k>"] = ":TmuxNavigateUp"
-- lvim.keys.normal_mode["<C-l>"] = ":TmuxNavigateRight"

-- php documentation
lvim.keys.normal_mode["<C-p>"] = ":call pdv#DocumentWithSnip()<CR>"
