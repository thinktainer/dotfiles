vim.lsp.handlers["window/showMessage"] = require "thinktainer.lsp.show_message"

require('thinktainer.lsp.keymaps')
require('thinktainer.lsp.server_config')

-- LSP servers configurations
require('thinktainer.lsp.bash')
require('thinktainer.lsp.docker')
require('thinktainer.lsp.go')
require('thinktainer.lsp.lua')
require('thinktainer.lsp.rust')
require('thinktainer.lsp.terraform')
require('thinktainer.lsp.typescript')
require('thinktainer.lsp.yaml')

-- WIP
require('thinktainer.lsp.protobuf')
