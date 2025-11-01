return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        -- Lazy load: se carga al leer o crear un buffer de cualquier archivo
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "vimdoc", "javascript", "typescript", "c", "lua", "rust",
                    "jsdoc", "bash",
                },
                sync_install = false,
                auto_install = true,  -- instalar parsers faltantes automáticamente
                indent = { enable = true },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },
            })

            -- Configuración parser personalizado `templ`
            local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            treesitter_parser_config.templ = {
                install_info = {
                    url = "https://github.com/vrischmann/tree-sitter-templ.git",
                    files = { "src/parser.c", "src/scanner.c" },
                    branch = "master",
                },
            }

            vim.treesitter.language.register("templ", "templ")
        end,
    }
}
