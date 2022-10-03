local M = {}
local map = require('thinktainer.utils.keymaps').map
local lsp_rename = require('lspsaga.rename')
local hover = require('lspsaga.hover')
local code_action = require('lspsaga.codeaction')

-- keymaps
function M.on_attach(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  map('n', 'gd', vim.lsp.buf.definition, bufopts)
  map('n', '<leader>rn', lsp_rename.rename, bufopts)
  map('n', 'gD', vim.lsp.buf.declaration, bufopts)
  map('n', 'gr', vim.lsp.buf.references, bufopts)
  map('n', 'gI', vim.lsp.buf.implementation, bufopts)
  map('n', 'K', hover.render_hover_doc, bufopts)
  map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  map('n', '[d', vim.diagnostic.goto_prev, bufopts)
  map('n', ']d', vim.diagnostic.goto_next, bufopts)
  map('n', '<leader>ca', code_action.code_action, bufopts)
  -- map('n', '<leader>ca', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>")
  map('n', '<leader>dq', vim.lsp.diagnostic.set_loclist, bufopts)
  map('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  vim.api.nvim_buf_set_option(bufnr, 'formatexpr', 'v:lua.vim.lsp.formatexpr')
end

return M
