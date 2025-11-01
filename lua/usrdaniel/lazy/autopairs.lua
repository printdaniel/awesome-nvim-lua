return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" }, -- Lazy load al entrar en modo Insert
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function()
        local autopairs = require("nvim-autopairs")
        autopairs.setup({
            check_ts = true, -- habilita treesitter
            ts_config = {
                lua = { "string" },
                javascript = { "template_string" },
                java = false,
            },
        })

        -- Integración con nvim-cmp (solo si cmp está activo)
        local status_ok, cmp = pcall(require, "cmp")
        if status_ok then
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    end,
}
