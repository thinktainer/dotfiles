-- Server setup
local server_name = 'tsserver'

require("mason-lspconfig").setup {
    ensure_installed = { server_name }
}
