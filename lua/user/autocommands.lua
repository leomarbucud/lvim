lvim.autocommands = {
    -- {
    --     "BufRead",
    --     {
    --         pattern = { "*.twig" },
    --         command = "set ft=jinja",
    --     }
    -- },
    {
        "BufEnter",
        {
            command = "set nofixendofline"
        }
    }
}
