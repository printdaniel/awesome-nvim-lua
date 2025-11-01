return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        -- Lazy load: solo se carga al usar la tecla de apertura o el comando ToggleTerm
        keys = { "<F2>" },
        cmd = { "ToggleTerm" },
        opts = {
            size = 15,
            open_mapping = "<F2>",
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 1,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "horizontal",
            close_on_exit = true,
            shell = vim.o.shell,
        },
    },
}
