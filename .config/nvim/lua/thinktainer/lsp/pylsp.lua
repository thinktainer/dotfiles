-- Server setup
local server_name = 'pylsp'

require("mason-lspconfig").setup {
    ensure_installed = { server_name }
}
