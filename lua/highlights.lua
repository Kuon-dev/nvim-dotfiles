local options = {
  cursorline = true,
  background= 'dark',
  termguicolors = true,
  winblend=0,
  wildoptions= 'pum'
  pumblend= 5
}

-- custom colors
local custom = {
  'Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40',
  'LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000',

-- remove background
  ' Normal guibg=NONE ctermbg=NONE ',
  ' SignColumn guibg=NONE ' ,
  ' EndOfBuffer guibg=NONE ctermbg=NONE ',

  ' NvimTreeNormal guibg=NONE',
  ' NvimTreeVertSplit guibg=#002A3B guifg=#002A3B guisp=NONE',
  ' NvimTreeEndOfBuffer guibg=NONE',

  ' TelescopePromptBorder guifg=#1d3b53',
  ' TelescopeResultsBorder guifg=#1d3b53',
  ' TelescopePreviewBorder guifg=#1d3b53',
  ' TelescopeResultsTitle guibg=#7fdbca guifg=#000000',
  ' TelescopePromptTitle guibg=#ff5874 guifg=#000000',
  ' TelescopePreviewTitle guibg=#ae81ff guifg=#000000',

  ' TSTagDelimiter guifg=#1160a6 ',

  ' Pmenu guibg=#011627 ',

  ' DashboardHeader guifg=#ff757f ',

}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k in pairs(custom) do
  vim.cmd[k]
end



-- ' LineNr guibg=#21283b',
--' CursorLineNr guibg=#21283b',
--' NvimTreeNormal guibg=#011627 ',
--' NvimTreeVertSplit guibg=#002A3B guifg=#002A3B guisp=NONE',
--' NvimTreeEndOfBuffer guibg=#011627 ',

