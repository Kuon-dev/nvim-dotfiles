local Plug = vim.fn[('plug#')]
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug ('tpope/vim-fugitive')
Plug (('tpope/vim-rhubarb'))

-- Lsp
Plug ('neovim/nvim-lspconfig')
Plug ('tami5/lspsaga.nvim')
Plug ('folke/lsp-colors.nvim')
Plug ('L3MON4D3/LuaSnip')
Plug ('nvim-treesitter/nvim-treesitter', ({['do']  = vim.fn['TSUpdate']}))
Plug ('kyazdani42/nvim-web-devicons')
Plug ('onsails/lspkind-nvim')
Plug ('nvim-lua/popup.nvim')
Plug ('nvim-lua/plenary.nvim')
Plug ('williamboman/nvim-lsp-installer')

-- file navigator
Plug ('nvim-telescope/telescope.nvim')
Plug ('nvim-telescope/telescope-file-browser.nvim')
Plug ('nvim-telescope/telescope-ui-select.nvim')
Plug ('AckslD/nvim-neoclip.lua')

-- indent lines
Plug ('lukas-reineke/indent-blankline.nvim')
-- Plug ('nvim-treesitter/nvim-treesitter-context')

-- less typing 
Plug ('windwp/nvim-autopairs')
Plug ('windwp/nvim-ts-autotag')

-- theme purposes 
-- Plug ('kyoz/purify', { 'rtp': 'vim') }  
-- Plug ('mangeshrex/everblush.vim')
-- Plug ('bluz71/vim-nightfly-guicolors')
Plug ('ayu-theme/ayu-vim')
Plug ('navarasu/onedark.nvim')
Plug ('lilydjwg/colorizer')

Plug ('glepnir/dashboard-nvim')

Plug ('romgrk/barbar.nvim') -- better tabs

-- for vue "
Plug ('leafOfTree/vim-vue-plugin')
Plug ('posva/vim-vue')
Plug ('luochen1990/rainbow')

-- tabnine autocomplete, refer to the documentation for tabnine installation
Plug ('neoclide/coc.nvim', ({['branch'] = 'release'}))

Plug ('lambdalisue/glyph-palette.vim')

--  Plug ('hrsh7th/cmp-nvim-lsp')
--  Plug ('hrsh7th/cmp-buffer')
-- Plug ('hrsh7th/nvim-cmp')
-- Plug ('tzachar/cmp-tabnine', ({ ['do'] = vim.fn['powershell ./install.ps1'] }))

-- fuzzy finder 
Plug ('junegunn/fzf', ({['do'] = vim.fn['fzf#install']}))
-- Plug ('nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build') }
Plug ('nvim-telescope/telescope-fzf-native.nvim', ({['do'] = vim.fn['make']}))

-- auto code commenter
-- Plug ('KarimElghamry/vim-auto-comment')
Plug ('numToStr/Comment.nvim')

-- multi cursor support
--  Plug ('mg979/vim-visual-multi', {'branch': 'master')}

-- easy adding html tags, refer https://github.com/mattn/emmet-vim
Plug ('mattn/emmet-vim')

-- git support
-- Plug ('airblade/vim-gitgutter')
Plug ('lewis6991/gitsigns.nvim')
Plug ('akinsho/git-conflict.nvim')

-- eslint support and auto fix
-- Plug ('isRuslan/vim-es6')
Plug ('neoclide/coc-eslint')

-- prettier
Plug ('prettier/vim-prettier')

-- lua tree
-- Plug ('scrooloose/nerdtree')
Plug ('hoob3rt/lualine.nvim')
Plug ('kyazdani42/nvim-tree.lua')

-- code realtime debugger
-- Plug ('metakirby5/codi.vim')

Plug ('tpope/vim-eunuch')

-- Plug ('groenewege/vim-less', { 'for': 'less') }
-- Plug ('kchmck/vim-coffee-script', { 'for': 'coffee') }

vim.call(('plug#end'))
