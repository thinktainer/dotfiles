-- Server setup
local server_name = 'bashls'

require("mason-lspconfig").setup {
	ensure_installed = { server_name }
}
