return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    dependencies = {
      {
        'f-person/auto-dark-mode.nvim',
        config = {
          update_interval = 1000,
          set_dark_mode = function()
            vim.api.nvim_set_option('background', 'dark')
          end,
          set_light_mode = function()
            vim.api.nvim_set_option('background', 'light')
          end,
        },
      },
    },
    config = function()
      require('catppuccin').setup {
        flavour = 'auto',
        background = {
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = true,
        integrations = {
          barbar = true,
          cmp = true,
          gitsigns = true,
          mason = true,
          noice = true,
          nvimtree = true,
          telescope = { enabled = true },
          treesitter = true,
          notify = true,
          which_key = true,
        },
        highlight_overrides = {
          all = function(colors)
            return {
              GitSignsCurrentLineBlame = { fg = colors.overlay0 },
              LineNr = { fg = colors.overlay0 },
            }
          end,
        },
      }
      -- Load the colorscheme here
      vim.cmd.colorscheme 'catppuccin'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
