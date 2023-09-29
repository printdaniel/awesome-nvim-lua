-- insures packer is installed
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute 'packadd packer.nvim'
end

-- General config
require('general')
require('functions')
require('keymaps')
require('commands')
require('runner')

-- include plugins and their config
require('plugins')
require('plug_config.treesitter')
require('plug_config.autopairs')
require('plug_config.colour')
require('plug_config.lualine')
require('plug_config.colorizer')
require('plug_config.toggleTerm')
require('plug_config.presence')
require('plug_config.toggle_lsp_diagnostics')
require('plug_config.lsp_config.lsp-cmp')
require('plug_config.lsp_config.lsp-config')
require('plug_config.lazygit')
require('plug_config.comment')
require('plug_config.bufferline')
require('plug_config.gitsigns')
require('plug_config.nvim-tree')
require('plug_config.telescope')
require('plug_config.harpoon')

-- CpHelper config
vim.g.cphdir = os.getenv( 'HOME' )..'/problems'
-- Rooter config
-- clipboard
vim.o.clipboard = "unnamedplus"
vim.g.rooter_pattern = { 'input1', 'output1' }
