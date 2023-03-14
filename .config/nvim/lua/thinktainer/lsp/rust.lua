-- Server setup
local server_name = 'rust_analyzer'

require("mason-lspconfig").setup {
	ensure_installed = { server_name }
}
