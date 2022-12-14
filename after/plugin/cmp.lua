local cmp_status_ok, cmp = pcall(require, "cmp")
if (not cmp_status_ok) then return end

vim.opt.completeopt= { 'menuone' , 'noinsert' , 'noselect' }

  local cmp = require'cmp'
  local lspkind = require'lspkind'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
      }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, 
    {
      { name = 'buffer' },
    },
    {
      { name = 'cmp_tabnine'},
    }),
    formatting = {
      format = lspkind.cmp_format({with_text = false, maxwidth = 50})
    }
  })

vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
	show_prediction_strength = false;
})
