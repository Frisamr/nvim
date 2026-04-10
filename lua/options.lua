-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: For more options, you can see `:help option-list`

vim.o.number = true
-- vim.o.relativenumber = true

vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
-- vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true

vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 10

vim.o.confirm = true

-- set shell to `powershell.exe` or `pwsh.exe` and apply recommended options accordingly
if vim.fn.has 'win32' == 1 then
  vim.o.shelltemp = false
  local shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
  shellcmdflag = shellcmdflag .. '[Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();'
  shellcmdflag = shellcmdflag .. "$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
  vim.o.shellpipe = '> %s 2>&1'
  vim.o.shellquote = ''
  vim.o.shellxquote = ''

  if vim.fn.executable 'pwsh.exe' == 1 then
    vim.o.shell = 'pwsh.exe'
    shellcmdflag = shellcmdflag .. "$PSStyle.OutputRendering = 'PlainText';"
    vim.env.__SuppressAnsiEscapeSequences = '1'
  else
    vim.o.shell = 'powershell.exe'
  end
  vim.o.shellcmdflag = shellcmdflag
end

-- vim: ts=2 sts=2 sw=2 et
