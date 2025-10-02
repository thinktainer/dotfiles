-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.lsp.set_log_level("warn")

vim.lsp.config('kcl', {
  cmd = { "kcl-language-server" },
  filetypes = { "kcl" },
  root_dir = function () return nil end,
  single_file_support = true,
  settings = {},
  root_markers = {},
})

require('lspconfig').kcl.setup {}

vim.lsp.enable('kcl')


-- require("config.kcl-lsp")

-- setup custom filetypes
vim.cmd [[
  augroup KCLFileType
    autocmd!
    autocmd FileType kcl setlocal autoindent expandtab tabstop=4 shiftwidth=4 softtabstop=4
  augroup END

  au BufRead,BufNewFile *.kcl setfiletype kcl
  au BufRead,BufNewFile *.k setfiletype kcl
]]
