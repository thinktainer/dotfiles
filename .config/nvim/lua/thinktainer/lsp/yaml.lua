-- Server setup
local server_name = 'yamlls'

require("mason-lspconfig").setup {
    ensure_installed = { server_name }
}
