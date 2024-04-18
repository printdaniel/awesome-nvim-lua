vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

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

-- Bufferline
keymap.set("n", "F", "<cmd> BufferLinePickClose <cr>", opts)
keymap.set("n", "<TAB>", "<cmd> BufferLineCycleNext <cr>", opts)
keymap.set("n", "<S-TAB>", "<cmd> BufferLineCyclePrev <cr>", opts)
keymap.set("n", "m.", "<cmd> BufferLineMoveNext <cr>", opts)
keymap.set("n", "m,", "<cmd> BufferLineMovePrev <cr>", opts)



-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
