local map = require('thinktainer.utils.keymaps').map

map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<Leader>n', ':NvimTreeFindFile<CR>')
map('n', '<Leader>r', ':NvimTreeRefresh<CR>')

require('nvim-tree').setup {
  actions = {
    open_file = {
      quit_on_open = false,
    }
  }
}
