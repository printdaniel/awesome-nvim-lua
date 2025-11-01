return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        -- Lazy load: se carga al usar los keymaps
        keys = {
            { "<leader>ff", function() require('telescope.builtin').find_files() end },
            { "<C-p>", function() require('telescope.builtin').git_files() end },
            { "<leader>pws", function()
                local word = vim.fn.expand("<cword>")
                require('telescope.builtin').grep_string({ search = word })
            end },
            { "<leader>pWs", function()
                local word = vim.fn.expand("<cWORD>")
                require('telescope.builtin').grep_string({ search = word })
            end },
            { "<leader>ps", function()
                require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
            end },
            { "<leader>fb", function() require('telescope.builtin').buffers() end },
            { "<leader>vh", function() require('telescope.builtin').help_tags() end },
        },
        config = function()
            require('telescope').setup({})
        end,
    },

    {
        "nvim-telescope/telescope-ui-select.nvim",
        -- Se carga solo después de telescope
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}

