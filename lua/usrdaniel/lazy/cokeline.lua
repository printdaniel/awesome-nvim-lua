return {
    {
        "willothy/nvim-cokeline",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "stevearc/resession.nvim",
        },
        -- Lazy load: se activa al leer o crear un buffer
        event = { "BufReadPost", "BufNewFile" },
        config = true,
    }
}

