return {
  'sindrets/diffview.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'NeogitOrg/neogit', config = { disable_commit_confirmation = true } },
  },

  keys = {
    { '<C-g>', '<CMD>DiffviewOpen<CR>', mode = { 'n', 'v' } },
  },
  config = {
    keymaps = {
      view = {
        ['<C-g>'] = '<CMD>DiffviewClose<CR>',
        ['c'] = '<CMD>DiffviewClose<CR><CMD>Neogit commit<CR>',
      },
      file_panel = {
        ['<C-g>'] = '<CMD>DiffviewClose<CR>',
        ['c'] = '<CMD>DiffviewClose<CR><CMD>Neogit commit<CR>',
      },
    },
  },
}
