return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)

    local extra_schemas = {
      {
        description = "Upvest Service Catalog Schema",
        url = "file://" .. os.getenv('HOME') .. "/code/upvest/upvest-platform-schema/schema/upvest/v1/service.json",
        fileMatch = {
          "upvest.service.yaml",
          "upvest.service.json",
        },
        name = "Upvest Service",
      },
    }

    local my_opts = {
      -- make sure mason installs the server
      servers = {
        jsonls = {
          -- lazy-load schemastore when needed
          before_init = function(_, new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas({
              extra = extra_schemas
            }))
          end,
        },
        yamlls = {
          before_init = function(_, new_config)
            new_config.settings.yaml.schemas = vim.tbl_deep_extend(
              "force",
              new_config.settings.yaml.schemas or {},
              require("schemastore").yaml.schemas({extra = extra_schemas})
            )
          end,
        }
      },
    }
    return vim.tbl_deep_extend("force", opts, my_opts)
  end
}
