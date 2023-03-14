-- Server setup
local server_name = 'lua_ls'

require("mason-lspconfig").setup {
  ensure_installed = { server_name },
}


local nvim_lsp = require 'lspconfig'

nvim_lsp['lua_ls'].setup {
  on_attach = require('thinktainer.lsp.server_config'),
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
