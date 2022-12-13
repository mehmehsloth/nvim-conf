nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gh :lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-j> <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> K <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <silent><F2> :lua vim.lsp.buf.rename()<CR>
nnoremap <silent>ga <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent>gA <cmd>Telescope lsp_range_code_actions<CR>

imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
