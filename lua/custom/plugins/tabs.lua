return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    config = function()
      require('barbar').setup()
      vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Previous Buffer' })
      vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Next Buffer' })
      vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', { desc = 'Close Buffer' })
      vim.keymap.set('n', '<leader>X', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = 'Close all buffers except current' })
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
