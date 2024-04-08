return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'NeogitOrg/neogit', config = { disable_commit_confirmation = true } },
  },

  keys = {
    { '<leader>do', '<CMD>DiffviewOpen<CR>', mode = { 'n', 'v' } },
  },
  config = {
    keymaps = {
      view = {
        ['<leader>dc'] = '<CMD>DiffviewClose<CR>',
        ['c'] = '<CMD>DiffviewClose<CR><CMD>Neogit commit<CR>',
      },
      file_panel = {
        ['<leader>dc'] = '<CMD>DiffviewClose<CR>',
        ['c'] = '<CMD>DiffviewClose<CR><CMD>Neogit commit<CR>',
      },
    },
  },
}
