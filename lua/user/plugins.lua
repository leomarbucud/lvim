lvim.plugins = {
    {
        "lunarvim/darkplus.nvim"
    },
    {
        "Glench/Vim-Jinja2-Syntax"
    },
    -- {
    --     "gbprod/tree-sitter-twig"
    -- },
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        lazy = false,
        config = function()
            require("persistence").setup({
                dir = vim.fn.expand(vim.fn.stdpath("config") .. "/sessions/"),
                options = { "buffers", "curdir", "tabpages", "winsize" },
            })
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "tobyS/vmustache"
    },
    {
        "tobyS/pdv"
    },
    {
        "SirVer/ultisnips"
    }
}

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.twig = {
--   install_info = {
--     url = "/home/leomar/.local/share/lunarvim/site/pack/lazy/opt/tree-sitter-twig",
--     files = {"src/parser.c"},
--     branch = "main",
--   },
--   filetype = "twig",
-- }
