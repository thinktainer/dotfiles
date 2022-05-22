-- Server setup
local server_name = 'terraformls'
local function ServerConfig()
  local config = DefaultServerConfig()
  config.prefillRequiredFields = true
end

SetupServer(server_name, ServerConfig())
