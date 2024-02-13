lvim.autocommands = {
    {
        "BufWinEnter",
        {
            pattern = { "*.yml" },
            command = "set shiftwidth=4",
        }
    },
    {
        "BufEnter",
        {
            command = "set nofixendofline"
        }
    }
}
