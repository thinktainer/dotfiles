local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

if not configs.kcllsp then
  configs.kcllsp = {
    default_config = {
      cmd = { "kcl-language-server" },
      filetypes = { "kcl" },
      root_dir = function() return nil end,
      single_file_support = true,
      settings = {},
    },
    docs = {
      description = [[ Language Server for KCL files. ]]
    },
  }
end

lspconfig.kcllsp.setup {}

vim.lsp.enable('kcllsp')
