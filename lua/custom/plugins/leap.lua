---@module 'lazy'
---@type LazySpec
return {
  {
    url = 'https://codeberg.org/andyg/leap.nvim.git',
    lazy = false,
    config = function()
      -- TODO: add additional config once I figure out how it works.
      -- see `:h leap.opts.preview` and `:h leap-traversal`
      -- Also treesitter node selection?

      vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
      vim.keymap.set('n', 'S', '<Plug>(leap-from-window)')

      vim.keymap.set({ 'n', 'o' }, 'gs', function()
        require('leap.remote').action {
          -- Automatically enter Visual mode when coming from Normal.
          input = vim.fn.mode(true):match 'o' and '' or 'v',
        }
      end)
    end,
  },
}
