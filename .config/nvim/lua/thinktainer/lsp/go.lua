-- Server setup
local server_name = 'gopls';
local function ServerConfig()
  local config = DefaultServerConfig()
  local util = require "lspconfig/util"
  config.root_dir = util.root_pattern("go.work", "go.mod", ".git")
  config.settings = {
    gopls = {
      usePlaceholders = true,
      gofumpt = true,
      staticcheck = true,
      semanticTokens = true,
    }
  };
  return config
end

SetupServer(server_name, ServerConfig())
