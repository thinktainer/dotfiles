vim.g.mapleader = ","
require('thinktainer.utils')
require('thinktainer.plugins')
require('thinktainer.lsp')

-- to become a require once general.vim is converted to lua too
vim.cmd('source ~/.config/nvim/general.vim')

-- Snippets key bindings
vim.api.nvim_set_keymap('i', '<C-j>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'", {
  silent = true,
  expr = true,
})

vim.api.nvim_set_keymap('s', '<C-j>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'", {
  silent = true,
  expr = true,
})
