return {
  'nvim-neorg/neorg',
  dependencies = {
    { 'vhyrro/luarocks.nvim', priority = 1000, config = true },
  },
  lazy = false,
  version = '*',
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {
          config = {
            icon_preset = 'diamond',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              neorg = '~/Documents/neorg',
            },
            default_workspace = 'neorg',
          },
        },
        ['core.export'] = {},
        ['core.keybinds'] = {
          config = {
            hook = function(keybinds)
              keybinds.remap('norg', 'n', '<C-b>', '<Cmd>Neotree reveal toggle<CR>')
            end,
          },
        },
        ['core.summary'] = {},
      },
    }

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.desc = (opts.desc or '')
      vim.keymap.set(mode, l, r, opts)
    end

    map('n', '<leader>ni', '<Cmd>Neorg index<CR>', { desc = '[N]eorg [I]ndex' })
    map('n', '<leader>nr', '<Cmd>Neorg return<CR>', { desc = '[N]eorg [R]eturn' })
    map('n', '<leader>ng', '<Cmd>Neorg generate-workspace-summary<CR>', { desc = '[N]eorg [G]enerate workspace summary' })
    map('n', '<leader>nm', '<Cmd>Neorg inject-metadata<CR>', { desc = '[N]eorg inject [M]etadata' })
    map('n', '<leader>nt', '<Cmd>Neorg toggle-concealer<CR>', { desc = '[N]eorg [T]oggle concealer' })
  end,
}
