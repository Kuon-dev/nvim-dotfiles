local exec = vim.api.nvim_exec -- execute Vimscript
local set = vim.opt -- global options
local cmd = vim.cmd -- execute Vim commands
-- init autocmd
cmd[[autocmd!]]
local options = {
  scriptencoding = 'utf-8', -- set script encoding
  nocompatible = true, -- stop loading config if it's on tiny or small
  number = true,
  fileencodings= { 'utf-8,sjis,euc-jp,latin' },
  encoding='utf-8',
  title = true,
  nobackup = true,
  nowritebackup = true,
  hlsearch = true,
  cmdheight=2,
  laststatus=2,
  scrolloff=10,
  expandtab = true,
  backupskip = { '/tmp/*', '/private/tmp/*' },
  noautochdir = true,
  completeopt= { 'menu' , 'menuone' , 'noselect' },
  inccommand = 'split',

  lazyredraw = true,
  ignorecase = true,

  autoindent = true,
  shiftwidth=2,
  tabstop=2,
  smarttab = true,
  showcmd = true,
  hidden = true,

  foldmethod = 'indent',
  nofoldenable = true,

  -- coc nvim special configs
  updatetime=300,
  signcolumn = 'yes',
}

set.wildignore:append {'*/node_modules/*'}
set.clipboard:prepend { 'unnamed', 'unnamedplus' }
set.formatoptions:append {'r'}
set.path:append{'**'}
set.shortmess:append{'c'}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim commands
local commands = {
  'filetype plugin indent on',
  'syntax enable',
}


for k in pairs(commands) do
  vim.cmd(k)
end

-- vim autocomd scripts
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste'
})

-- set nosc noru nosm

-- set t_BE=

-- set ai "Auto indent
-- set si "Smart indent
-- set nowrap "No Wrap lines
-- set backspace=start,eol,indent
-- set wildchar=<Tab>
-- set wildmenu

-- MULTIPURPOSE TAB KEY
-- Indent if we're at the beginning of a line. Else, do completion.
--[[
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <s-tab> <c-n>
]]--


