vim.g.mapleader = ","
require('thinktainer.utils')
require('thinktainer.plugins')
require('thinktainer.lsp')

vim.cmd('let base16colorspace=256')
-- to become a require once general.vim is converted to lua too
vim.cmd('source ~/.config/nvim/general.vim')
vim.cmd('source ~/.vimrc_background')

-- Snippets key bindings
vim.api.nvim_set_keymap('i', '<C-j>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'", {
  silent = true,
  expr = true,
})

vim.api.nvim_set_keymap('s', '<C-j>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'", {
  silent = true,
  expr = true,
})
