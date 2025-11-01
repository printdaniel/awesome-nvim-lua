return {
    {
        "folke/trouble.nvim",
        -- Lazy load: se activa al ejecutar el comando Trouble o usar keymaps
        cmd = { "TroubleToggle", "Trouble" },
        keys = {
            { "<leader>tt", function() require("trouble").toggle() end, desc = "Toggle Trouble" },
            { "[t", function() require("trouble").next({ skip_groups = true, jump = true }) end, desc = "Next Trouble item" },
            { "]t", function() require("trouble").previous({ skip_groups = true, jump = true }) end, desc = "Previous Trouble item" },
        },
        config = function()
            require("trouble").setup({
                icons = false,
            })
        end,
    }
}

