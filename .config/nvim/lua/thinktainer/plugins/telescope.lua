local map = require('thinktainer.utils.keymaps').map

map('n', '<Leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' , '-g', '!vendor'}})<cr>")
map('n', '<Leader>fg', ':Telescope live_grep<CR>')

map('n', '<Leader>fb', ':Telescope git_branches<CR>')
map('n', '<Leader>fc', ':Telescope git_commits<CR>')
map('n', '<Leader>gs', ':Telescope git_status<CR>')
map('n', '<Leader>b', ':Telescope buffers<CR>')

require('telescope').setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      n = {
        ['<c-d>'] = require('telescope.actions').delete_buffer
      }, -- n
      i = {
        ["<C-h>"] = "which_key",
        ['<c-d>'] = require('telescope.actions').delete_buffer
      } -- i
    } -- mappings
  }, -- defaults
  ...
} -- telescope setup
