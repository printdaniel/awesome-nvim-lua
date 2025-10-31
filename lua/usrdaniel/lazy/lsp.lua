return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        local cmp = require("cmp")
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities()
        )

        -- Fidget
        require("fidget").setup({})

        -- Mason
        require("mason").setup()

        -- Mason-LSPConfig
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "gopls", "clangd" },
            automatic_enable = true,
        })

        -- Configuración de servidores usando lspconfig
        local lspconfig = require("lspconfig")

        -- Lua
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = { version = "Lua 5.1" },
                    diagnostics = { globals = { "vim", "it", "describe", "before_each", "after_each" } },
                },
            },
        })

        -- Clangd para C/C++
        lspconfig.clangd.setup({
            capabilities = capabilities,
            cmd = { "clangd", "--background-index" }, -- índice en segundo plano
        })

        -- Otros servidores
        for _, server in ipairs({ "pyright", "rust_analyzer", "gopls" }) do
            lspconfig[server].setup({
                capabilities = capabilities,
            })
        end

        -- Configuración de nvim-cmp
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
            }, {
                { name = "buffer" },
            }),
        })

        -- Diagnósticos flotantes
        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
