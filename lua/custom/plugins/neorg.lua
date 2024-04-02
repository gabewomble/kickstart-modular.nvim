return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
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
        ['core.keybinds'] = {
          config = {
            hook = function(keybinds)
              keybinds.unmap('norg', 'n', '<C-Space>')
              keybinds.map('norg', 'n', '<C-Space>', "<Cmd>Neotree reveal toggle<CR>")
            end,
          },
        },
        ['core.summary'] = {},
      },
    }
  end,
}
