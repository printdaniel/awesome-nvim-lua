vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Esc
keymap.set("i", "jj", "<ESC>", { silent = true })

-- Select-All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Cokeline
local map = vim.api.nvim_set_keymap
map("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true })
map("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
map("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", { silent = true })
map("n", "<Leader>n", "<Plug>(cokeline-switch-next)", { silent = true })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
