return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'NeogitOrg/neogit', opts = { disable_commit_confirmation = true } },
  },

  keys = {
    { '<leader>do', '<CMD>DiffviewOpen<CR>', mode = { 'n', 'v' } },
  },
  opts = {
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
