vim.g.mapleader = ","
require('thinktainer.utils')
require('thinktainer.plugins')
require('thinktainer.lsp')

vim.cmd('let base16colorspace=256')
-- to become a require once general.vim is converted to lua too
vim.cmd('source ~/.config/nvim/general.vim')
vim.cmd('source ~/.vimrc_background')

vim.cmd([[
augroup GoFormatting
autocmd BufWritePre *.go lua GoImports(1000)
augroup END
augroup Formatting
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
augroup END
autocmd FileType go setlocal ts=2 sw=2 noet nolist
autocmd Filetype go setlocal tabstop=2
]])

-- Snippets key bindings
vim.api.nvim_set_keymap('i', '<C-j>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'", {
  silent = true,
  expr = true,
})

vim.api.nvim_set_keymap('s', '<C-j>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'", {
  silent = true,
  expr = true,
})
