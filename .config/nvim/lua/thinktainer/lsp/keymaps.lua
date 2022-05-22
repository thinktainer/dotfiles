local m = {}
require('thinktainer.utils.keymaps')

-- keymaps
function m.on_attach(_, bufnr)
  BufNMap(bufnr, 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
  BufNMap(bufnr, '<leader>rn', "<cmd>lua require('lspsaga.rename').rename()<CR>")
  BufNMap(bufnr, 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
  BufNMap(bufnr, 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
  BufNMap(bufnr, 'gI', '<cmd>lua vim.lsp.buf.implementation()<CR>')
  BufNMap(bufnr, 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>")
  BufNMap(bufnr, '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
  BufNMap(bufnr, '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
  BufNMap(bufnr, ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
  BufNMap(bufnr, '<leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>")
  BufVMap(bufnr, '<leader>ca', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>")
  BufNMap(bufnr, '<leader>dq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
  BufNMap(bufnr, '<leader>f', '<cmd> lua vim.lsp.buf.formatting()<CR>')
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  vim.api.nvim_buf_set_option(bufnr, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')
end

return m
