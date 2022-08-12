
local options = {
  cursorline = true,
  background= 'dark',
  termguicolors = true,
  winblend=0,
  wildoptions= 'pum',
  pumblend= 5
}


-- custom colors
local custom = {
  "highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40",
  "highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000",

-- remove background
  "highlight Normal guibg=NONE ctermbg=NONE ",
  "highlight SignColumn guibg=NONE " ,
  "highlight EndOfBuffer guibg=NONE ctermbg=NONE ",

  "highlight NvimTreeNormal guibg=NONE",
  "highlight NvimTreeVertSplit guibg=#002A3B guifg=#002A3B guisp=NONE",
  "highlight NvimTreeEndOfBuffer guibg=NONE",

  "highlight TelescopePromptBorder guifg=#1d3b53",
  "highlight TelescopeResultsBorder guifg=#1d3b53",
  "highlight TelescopePreviewBorder guifg=#1d3b53",
  "highlight TelescopeResultsTitle guibg=#7fdbca guifg=#000000",
  "highlight TelescopePromptTitle guibg=#ff5874 guifg=#000000",
  "highlight TelescopePreviewTitle guibg=#ae81ff guifg=#000000",

  "highlight TSTagDelimiter guifg=#1160a6 ",

  "highlight Pmenu guibg=#011627 ",

  "highlight DashboardHeader guifg=#ff757f ",

}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for _, i in pairs(custom) do
  vim.cmd(i)
end


vim.cmd(  "highlight TelescopePromptTitle guibg=#ff5874 guifg=#000000")








-- ' LineNr guibg=#21283b',
-- ' CursorLineNr guibg=#21283b',
-- ' NvimTreeNormal guibg=#011627 ',
-- ' NvimTreeVertSplit guibg=#002A3B guifg=#002A3B guisp=NONE',
-- ' NvimTreeEndOfBuffer guibg=#011627 ',

