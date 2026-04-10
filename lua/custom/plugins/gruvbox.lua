---@module 'lazy'
---@type LazySpec
return {
  {
    'ellisonleao/gruvbox.nvim',
    commit = '00e38a3', -- Last normal commit before plugin author started acting weird.
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('gruvbox').setup {
        -- TODO: apply colorscheme settings
      }
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
