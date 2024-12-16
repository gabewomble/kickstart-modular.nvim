-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      event_handlers = {
        {
          event = 'neo_tree_buffer_enter',
          handler = function(arg)
            vim.cmd [[
              setlocal relativenumber
            ]]
          end,
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
      },
      window = {
        position = 'float',
      },
    }
    vim.keymap.set('n', '<C-b>', '<Cmd>Neotree reveal toggle<CR>', { desc = 'Toggle filetree' })
  end,
}
