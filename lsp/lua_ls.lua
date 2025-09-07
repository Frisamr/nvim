return {
  settings = {
    Lua = {
      completion = {
        autoRequire = false,
        callSnippet = 'Replace',
      },
      -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      -- diagnostics = { disable = { 'missing-fields' } },
      workspace = { ignoreDir = { '.git', 'build', 'dist' } },
    },
  },
}
