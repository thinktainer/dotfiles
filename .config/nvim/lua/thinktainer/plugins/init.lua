require('thinktainer.plugins.bundle')
require('thinktainer.plugins.cmp')
require('thinktainer.plugins.comment-nvim')
require('thinktainer.plugins.harpoon')
require('thinktainer.plugins.lspsaga')
require('thinktainer.plugins.nvim-treesitter')
require('thinktainer.plugins.nvim-tree')
require('thinktainer.plugins.octo-nvim')
require('thinktainer.plugins.telescope')
require('thinktainer.plugins.lualine')

require 'lspconfig'
require("mason").setup()
require('mason-lspconfig').setup {}
-- require('thinktainer.plugins.go')
