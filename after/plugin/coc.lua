-- local status, coc = pcall(require, "coc.nvim")
-- if (not status) then return end

local keymap = vim.api.nvim_set_keymap
local expr_opts = { noremap = true, silent = true, expr = true }
local opts = { noremap = true, silent = true }
local expr = { expr = true, noremap = true}
local silent = { silent = true, noremap = true }

local fn = vim.fn

-- use CTRL-J and K to move on snippets and auto completion
vim.g["coc_snippet_next"] = ""
vim.g["coc_snippet_prev"] = ""

keymap(
    "i",
    "<c-j>",
    [[coc#pum#visible() ? coc#pum#next(1) : coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetNext', [])<cr>" : "\<c-j>"]]
    ,
    expr_opts
)
keymap(
    "i",
    "<c-k>",
    [[coc#pum#visible() ? coc#pum#prev(1) : coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetPrev', [])<cr>" : "\<c-k>"]]
    ,
    expr_opts
)

-- use CR to complete
keymap(
  "i",
  "<CR>",
  [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
  expr_opts
)

-- use <c-space> to trigger completion.
keymap("i", "<c-space>", [[coc#refresh()]], expr_opts)
keymap("i", "<A-d>", [[coc#refresh()]], expr_opts)

keymap(
  "i",
  "<TAB>",
  [[coc#pum#visible() ? coc#pum#next(1) : "\<TAB>" ]],
  expr_opts
)

keymap(
  "i",
  "<Bs>",
  [[coc#pum#visible() ? coc#pum#next(1) : "\<Bs>" ]],
  expr_opts
)


keymap(
  'i',
  '<S-TAB>',
  [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]],
  expr_opts
)

-- inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
--       \: "\<C-g>u\<CR>\<C-s>=coc#on_enter()\<CR>"


keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', opts)
-- nmap <silent> [g <Plug>(coc-diagnostic-prev)
-- nmap <silent> ]g <Plug>(coc-diagnostic-next)

-- -- GoTo code navigation.
-- nmap <silent> gd <Plug>(coc-definition)
-- nmap <silent> gy <Plug>(coc-type-definition)
-- nmap <silent> gi <Plug>(coc-implementation)
-- nmap <silent> gr <Plug>(coc-references)

-- Use K to show documentation in preview window.
-- nnoremap <silent> K :call ShowDocumentation()<CR>
--[[
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
]]--

function Show_documentation()
    local filetype = vim.bo.filetype
    if filetype == "vim" or filetype == "help" then
        vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
    elseif vim.fn["coc#rpc#ready"]() then
        vim.fn.CocActionAsync("doHover")
    else
        vim.api.nvim_command(
            "!" .. vim.bo.keywordprg .. " " .. vim.fn.expand("<cword>")
        )
    end
end

-- Highlight the symbol and its references when holding the cursor.
-- autocmd CursorHold * silent call CocActionAsync('highlight')
-- 
-- -- Symbol renaming.
-- nmap <leader>rn <Plug>(coc-rename)
-- 
-- -- Formatting selected code.
-- xmap <leader>f  <Plug>(coc-format-selected)
-- nmap <leader>f  <Plug>(coc-format-selected)
-- 
-- augroup mygroup
--   autocmd!
--   " Setup formatexpr specified filetype(s).
--   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
--   " Update signature help on jump placeholder.
--   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
-- augroup end
-- 
-- -- Applying codeAction to the selected region.
-- -- Example: `<leader>aap` for current paragraph
-- xmap <leader>a  <Plug>(coc-codeaction-selected)
-- nmap <leader>a  <Plug>(coc-codeaction-selected)
-- 
-- -- Remap keys for applying codeAction to the current buffer.
-- nmap <leader>ac  <Plug>(coc-codeaction)
-- -- Apply AutoFix to problem on the current line.
-- nmap <leader>qf  <Plug>(coc-fix-current)
-- 
-- -- Run the Code Lens action on the current line.
-- nmap <leader>cl  <Plug>(coc-codelens-action)
-- 
-- -- Map function and class text objects
-- -- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
-- xmap if <Plug>(coc-funcobj-i)
-- omap if <Plug>(coc-funcobj-i)
-- xmap af <Plug>(coc-funcobj-a)
-- omap af <Plug>(coc-funcobj-a)
-- xmap ic <Plug>(coc-classobj-i)
-- omap ic <Plug>(coc-classobj-i)
-- xmap ac <Plug>(coc-classobj-a)
-- omap ac <Plug>(coc-classobj-a)
-- 
-- -- Remap <C-f> and <C-b> for scroll float windows/popups.
-- if has('nvim-0.4.0') || has('patch-8.2.0750')
--   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
--   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
--   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
--   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
--   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
--   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
-- endif
-- 
-- -- Use CTRL-S for selections ranges.
-- -- Requires 'textDocument/selectionRange' support of language server.
-- nmap <silent> <C-s> <Plug>(coc-range-select)
-- xmap <silent> <C-s> <Plug>(coc-range-select)
-- 
-- -- Add `:Format` command to format current buffer.
-- command! -nargs=0 Format :call CocActionAsync('format')
-- 
-- -- Add `:Fold` command to fold current buffer.
-- command! -nargs=? Fold :call     CocAction('fold', <f-args>)
-- 
-- -- Add `:OR` command for organize imports of the current buffer.
-- command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
-- 
-- -- Add (Neo)Vim's native statusline support.
-- -- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- -- provide custom statusline: lightline.vim, vim-airline.
-- set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

