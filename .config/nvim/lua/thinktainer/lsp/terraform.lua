-- Server setup
require("mason-lspconfig").setup {
  ensure_installed = { "terraformls" },
}

local nvim_lsp = require 'lspconfig'

local capabilities = require('cmp_nvim_lsp').default_capabilities()

nvim_lsp['terraformls'].setup {
  on_attach = require('thinktainer.lsp.server_config'),
  capabilities = capabilities,
}
