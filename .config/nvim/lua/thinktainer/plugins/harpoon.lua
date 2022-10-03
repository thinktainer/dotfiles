local map = require('thinktainer.utils.keymaps').map

map('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>')
map('n', '<C-e>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n', '<leader>tc', ':lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>')

map('n', '<leader>j', ':lua require("harpoon.ui").nav_file(1)<CR>')
map('n', '<leader>k', ':lua require("harpoon.ui").nav_file(2)<CR>')
map('n', '<leader>l', ':lua require("harpoon.ui").nav_file(3)<CR>')
map('n', '<leader>;', ':lua require("harpoon.ui").nav_file(4)<CR>')
