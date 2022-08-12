local exec = vim.api.nvim_exec -- execute Vimscript
local set = vim.opt -- global options
local cmd = vim.cmd -- execute Vim commands

cmd("autocmd!")
local options = {
  fileencoding = 'utf-8',
  encoding = 'utf-8',
  number = true,
  title = true,
  backup = false,
  writebackup = false,
  hlsearch = true,
  cmdheight = 2,
  laststatus = 2,
  scrolloff=10,
  expandtab = true,
  autochdir = false,
  backupskip = { '/tmp/*', '/private/tmp/*' },
  backspace = { 'start', 'eol', 'indent' },
  completeopt= { 'menu' , 'menuone' , 'noselect' },
  inccommand = 'split',

  ignorecase = true,

  autoindent = true,
  shiftwidth = 2,
  tabstop =2 ,
  smarttab = true,
  showcmd = true,
  hidden = true,

  foldmethod = 'indent',
  foldenable = false,

  updatetime= 300,
  signcolumn = 'yes',
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

set.wildignore:append {'*/node_modules/*'}
set.clipboard:prepend { 'unnamed', 'unnamedplus' }

set.formatoptions:append {'r'}
set.path:append {'**'}
-- set.shortmess:append {'C'}


-- vim commands

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")


-- vim autocomd scripts
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste'
})
-- init autocmd
