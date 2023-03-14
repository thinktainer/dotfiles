-- Server setup
local server_name = 'lua_ls'

require("mason-lspconfig").setup {
  ensure_installed = { server_name }
}
