-- Server setup
local server_name = 'terraformls'
local function ServerConfig()
  local config = DefaultServerConfig()
  config.validateOnSave = true
  config.prefillRequiredFields = true
end

SetupServer(server_name, ServerConfig())
