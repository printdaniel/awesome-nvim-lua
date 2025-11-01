return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = "nvim-tree/nvim-web-devicons",
        -- Lazy load al usar cualquiera de estos comandos o keymaps
        cmd = { "NvimTreeToggle", "NvimTreeFindFileToggle", "NvimTreeCollapse", "NvimTreeRefresh" },
        keys = {
            { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
            { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Toggle file explorer on current file" },
            { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer" },
            { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh file explorer" },
        },
        config = function()
            local nvimtree = require("nvim-tree")

            -- recommended settings from nvim-tree documentation
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            nvimtree.setup({
                view = {
                    width = 35,
                    relativenumber = true,
                },
                renderer = {
                    indent_markers = { enable = true },
                    icons = {
                        glyphs = {
                            folder = {
                                arrow_closed = "",
                                arrow_open = "",
                            },
                        },
                    },
                },
                actions = {
                    open_file = { window_picker = { enable = false } },
                },
                filters = { custom = { ".DS_Store" } },
                git = { ignore = false },
            })
        end
    }
}

