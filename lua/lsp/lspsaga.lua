local saga_status_ok, saga = pcall(require, "lspsaga")
if (not saga_status_ok) then return end

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

local action = require("lspsaga.codeaction")

-- code action
vim.keymap.set("n", "<leader>ca", action.code_action, { silent = true,noremap = true })
vim.keymap.set("v", "<leader>ca", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    action.range_code_action()
end, { silent = true,noremap =true })
-- or use command
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true,noremap = true })
vim.keymap.set("n", "<A-l>", "<cmd>Lspsaga toggle_virtual_text<CR>", { silent = true,noremap = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true,noremap = true })


