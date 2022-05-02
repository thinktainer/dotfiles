require('thinktainer.utils.keymaps')

NMap('<Leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' , '-g', '!vendor'}})<cr>")
NMap('<Leader>fg', ':Telescope live_grep<CR>')

NMap('<Leader>fb', ':Telescope git_branches<CR>')
NMap('<Leader>fc', ':Telescope git_commits<CR>')
NMap('<Leader>gs', ':Telescope git_status<CR>')
NMap('<Leader>b', ':Telescope buffers<CR>')

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
