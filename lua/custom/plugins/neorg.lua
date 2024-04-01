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
              notes = '~/notes',
              -- workspace to place all neorg learning notes
              neorg = '~/Documents/neorg',
            },
            default_workspace = 'neorg',
          },
        },
      },
    }
  end,
}
