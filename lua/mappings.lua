-- Description: Keymaps

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local coc_opts = { silent = true, nowait = true }

local keymap = vim.api.nvim_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap('n', 'x', '"_x')

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'vb"_d')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- Windows

-- Split window
keymap('n', 'ss', ':split<Return><C-w>w')
keymap('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap('n', '<Space>', '<C-w>w')
keymap('', 'sh', '<C-w>h')
keymap('', 'sk', '<C-w>k')
keymap('', 'sj', '<C-w>j')
keymap('', 'sl', '<C-w>l')

-- Resize window
keymap('n', '<C-w><left>', '<C-w><')
keymap('n', '<C-w><right>', '<C-w>>')
keymap('n', '<C-w><up>', '<C-w>+')
keymap('n', '<C-w><down>', '<C-w>-')

-- Mappings for CoCList
keymap('n', '<Leader>a', '<cmd>CocList diagnostics<cr>', coc_otps ) --show all diagnostics
keymap('n', '<Leader>e', '<cmd>CocList extensions<cr>', coc_otps ) -- manage extensions
keymap('n', '<Leader>c', '<cmd>CocList commands<cr>', coc_otps ) --  show commands
keymap('n', '<Leader>o', '<cmd>CocList outline<cr>', coc_otps ) -- find symbol of current docsnnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr> 
keymap('n', '<Leader>s', '<cmd>CocList -I symbols<cr>', coc_otps ) -- search workspace symbols
keymap('n', '<Leader>j', '<cmd>CocNext <cr>', coc_otps ) -- next item
keymap('n', '<Leader>k', '<cmd>CocPrev <cr>', coc_otps ) -- previous item
keymap('n', '<Leader>p', '<cmd>CocListResume <cr>', coc_otps ) -- Resume latest coc list.

-- undo redo maps
keymap('n', '<C-z>', 'u', opts)
keymap('i', '<C-z>', 'u', opts)
keymap('v', '<C-z>', 'u', opts)
keymap('c', '<C-z>', 'u', opts)

keymap('n', '<C-y>', '<C-O><C-R>', opts)
keymap('i', '<C-y>', '<C-O><C-R>', opts)
keymap('v', '<C-y>', '<C-O><C-R>', opts)
keymap('c', '<C-y>', '<C-O><C-R>', opts)


--   Bufferr tabs
- Move to previous/next
keymap('n', '<A-,>', '<cmd>BufferPrevious<CR>', term_opts)
keymap('n', '<A-.>', '<cmd>BufferNext<CR>', term_opts)
-- Re-order to previous/next
keymap('n', '<A-<>', '<cmd>BufferMovePrevious<CR>', term_opts)
keymap('n', '<A->>', '<cmd>BufferMoveNext<CR>', term_opts)
-- Goto buffer in position...
keymap('n', '<A-1>', '<cmd>BufferGoto 1<CR>', term_opts)
keymap('n', '<A-2>', '<cmd>BufferGoto 2<CR>', term_opts)
keymap('n', '<A-3>', '<cmd>BufferGoto 3<CR>', term_opts)
keymap('n', '<A-4>', '<cmd>BufferGoto 4<CR>', term_opts)
keymap('n', '<A-5>', '<cmd>BufferGoto 5<CR>', term_opts)
keymap('n', '<A-6>', '<cmd>BufferGoto 6<CR>', term_opts)
keymap('n', '<A-7>', '<cmd>BufferGoto 7<CR>', term_opts)
keymap('n', '<A-8>', '<cmd>BufferGoto 8<CR>', term_opts)
keymap('n', '<A-9>', '<cmd>BufferLast<CR>', term_opts)
-- Pin/unpin buffer
keymap('n', '<A-p>', '<cmd>BufferPin<CR>', term_opts)
-- Close buffer
keymap('n', '<A-c>', '<cmd>BufferClose<CR>', term_opts)
--  Wipeout buffer
--                           :BufferWipeout<CR>
--  Close commands
--                           :BufferCloseAllButCurrent<CR>
--                           :BufferCloseAllButPinned<CR>
--                           :BufferCloseAllButCurrentOrPinned<CR>
--                           :BufferCloseBuffersLeft<CR>
--                           :BufferCloseBuffersRight<CR>
--  Magic buffer-picking mode

keymap('n', '<C-s>', '<cmd>BufferPick<CR>', term_opts)
-- Sort automatically by...
keymap('n', '<C-s>', '<cmd>BufferOrderByBufferNumber<CR>', term_opts)
-- nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
-- nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
-- nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
-- nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

-- rebind to copy to clopboard
-- noremap <Leader>y "*y
-- noremap <Leader>p "*p
-- noremap <Leader>Y "+y
-- noremap <Leader>P "+p
