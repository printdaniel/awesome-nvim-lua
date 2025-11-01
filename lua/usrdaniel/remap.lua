-- ==============================
-- 🔹 Leader
-- ==============================
vim.g.mapleader = " "

-- Recargar configuración
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Recargar init.lua" })

-- ==============================
-- 🔹 Modo Insert
-- ==============================
local opts = { noremap = true, silent = true }

-- Esc con 'jj'
vim.keymap.set("i", "jj", "<ESC>", opts)

-- ==============================
-- 🔹 Ventanas
-- ==============================
-- Splits
vim.keymap.set("n", "ss", ":split<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Moverse entre splits
vim.keymap.set("n", "sh", "<C-w>h", opts)
vim.keymap.set("n", "sk", "<C-w>k", opts)
vim.keymap.set("n", "sj", "<C-w>j", opts)
vim.keymap.set("n", "sl", "<C-w>l", opts)

-- ==============================
-- 🔹 Cokeline
-- ==============================
vim.keymap.set("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true, desc = "Siguiente buffer" })
vim.keymap.set("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true, desc = "Buffer anterior" })
vim.keymap.set("n", "<Leader>n", "<Plug>(cokeline-switch-next)", { silent = true, desc = "Siguiente buffer (switch)" })
vim.keymap.set("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", { silent = true, desc = "Buffer anterior (switch)" })
