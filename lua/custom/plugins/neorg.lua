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
        ['core.summary'] = {},
      },
    }
  end,
}
