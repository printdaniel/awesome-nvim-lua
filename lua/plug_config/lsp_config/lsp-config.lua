-- Use following commadn to install language server in arch using pacman, paru(AUR) and npm
-- sudo pacman -S pyright bash-language-server lua-language-server 
-- ccls haskell-language-server typescript-language-server 
-- paru -S arduino-language-server cmake-language-server-git cssmodules-language-server jdtls

local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local servers = {'tsserver', 'hls', 'html', 'lua_ls', 'bashls','clangd', 'golangci_lint_ls', 'gopls'}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
    root_dir = function() return vim.loop.cwd() end
  }
end

require 'lspconfig'.golangci_lint_ls.setup{}
require 'lspconfig'.gopls.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.tsserver.setup{}
