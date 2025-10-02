return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        yamlfix = {
          env = {
            YAMLFIX_INDENT_SEQUENCE = "2",
            YAMLFIX_INDENT_OFFSET = "0",
            YAMLFIX_quote_representation = '"',
            YAMLFIX_SEQUENCE_STYLE = "keep_style",
            YAMLFIX_preserve_quotes = "true",
            YAMLFIX_LINE_LENGTH = 140,
          },
        },
      },
    },
  },
}
