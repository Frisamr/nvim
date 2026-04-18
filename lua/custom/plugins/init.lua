-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  require 'custom.plugins.telescope',
  require 'custom.plugins.gruvbox',
  require 'custom.plugins.leap',
}

-- vim: ts=2 sts=2 sw=2 et
