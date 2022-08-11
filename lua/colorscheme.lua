require('onedark').setup {
  style = 'deep',
  trasparent = true,
  term_colors = true,
  code_style = {
      comments = 'italic',
      keywords = 'none',
      functions = 'none',
      strings = 'none',
      variables = 'none'
  },
  diagnostics = {
      darker = true, -- darker colors for diagnostic
      undercurl = true,   -- use undercurl instead of underline for diagnostics
      background = true,    -- use background color for virtual text
  },
  colors = {
    Blue = "#7fdbca",
  },
  highlights = {
    htmlLink = { fg = '$Blue'},
  },
}

-- other color scheme
local colorscheme = {
  nightfly,
  onedark, 
  everblush,
}

vim.cmd [[colorscheme onedark]]
--
-- To enable
-- let g:everblushNR=1 " default
-- let g:nightflyCursorColor = 1
-- To disable
-- let g:everblushNR=1


