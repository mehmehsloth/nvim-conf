  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
       vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    mapping = {
       ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
       ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
       ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
       ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
       ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
       ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
       ['<C-d>'] = cmp.mapping.scroll_docs(-4),
       ['<C-f>'] = cmp.mapping.scroll_docs(4),
       ['<C-Space>'] = cmp.mapping.complete(),
       ['<C-e>'] = cmp.mapping.close(),
       ['<CR>'] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
       })
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp', keyword_length=1 },
      { name = 'vsnip', keyword_length=2 }, -- For vsnip users.
    }, {
      { name = 'buffer', keyword_length=2 },
    }
    )
  })

  ---- Setup lspconfig.
  -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  ---- tsserver
  -- require('lspconfig')['tsserver'].setup {
  --   capabilities = capabilities
  -- }

  ---- svelte
  --require('lspconfig')['svelte'].setup {
  --  capabilities = capabilities
  --}

  ---- sumenko_lua_server
  -- require('lspconfig')['sumneko_lua'].setup {
  --   capabilities = capabilities
  -- }

  ---- cssls
  --require('lspconfig')['cssls'].setup{
  -- capabilities = capabilities
  --}

  ----golang
  --require('lspconfig')['gopls'].setup{
  -- capabilities = capabilities
  --}
