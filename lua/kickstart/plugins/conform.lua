local web_config = { 'prettierd', 'eslint_d' }
return {
  { -- Autoformat
    'stevearc/conform.nvim',
    keys = {
      {
        '<leader>fb',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = 'n',
        desc = '[F]ormat [B]uffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        json = { 'prettierd' },
        jsonc = { 'prettierd' },
        html = web_config,
        javascript = web_config,
        typescript = web_config,
        typescriptreact = web_config,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
