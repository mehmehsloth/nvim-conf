"Plugins
call plug#begin("~/.nvim/plugged")
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'shaunsingh/solarized.nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'sainnhe/edge'
    Plug 'navarasu/onedark.nvim'
    Plug 'catppuccin/nvim', { 'as' : 'catppuccin' }
    Plug 'sainnhe/gruvbox-material'
    Plug 'projekt0n/github-nvim-theme'
    Plug 'tanvirtin/monokai.nvim'

    Plug 'metakirby5/codi.vim'
    Plug 'glepnir/dashboard-nvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'frazrepo/vim-rainbow'
    Plug 'akinsho/nvim-toggleterm.lua'
    Plug 'junegunn/goyo.vim'
    Plug 'folke/todo-comments.nvim'
    Plug 'windwp/nvim-ts-autotag'
    Plug 'numToStr/Comment.nvim'
    Plug 'JoosepAlviste/nvim-ts-context-commentstring'
    Plug 'folke/zen-mode.nvim'
    
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'lilydjwg/colorizer'

    Plug 'kyazdani42/nvim-tree.lua'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'neovim/nvim-lspconfig'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Snippets
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'mattn/emmet-vim'
    
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'sbdchd/neoformat'

    " Plug 'ap/vim-buftabline'
    " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}


    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    Plug 'romgrk/barbar.nvim'
    Plug 'kyazdani42/nvim-web-devicons' 
    Plug 'nvim-lualine/lualine.nvim'
    " Plug 'tamton-aquib/staline.nvim'

call plug#end()

let g:mapleader=" "

nnoremap <leader>kz :Goyo <CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" WOOHHOOOOOOOOOOO
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vmap < <gv
vmap > >gv

map <F9> : make %:r <CR>

nnoremap <silent>    <S-Tab> :BufferPrev<CR>
nnoremap <silent>    <Tab> :BufferNext<CR>
nnoremap <silent>    <C-q> :BufferClose <CR>
nnoremap <silent> <Space>S :SessionSave<CR>
nnoremap <leader><leader>g :GitGutterToggle<CR>

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>


" Commentary
nnoremap <silent> <C-/> :Commentary <CR>
nnoremap <silent> <leader>/ :Commentary <CR>

" Todo management
nnoremap <leader><leader>t :TODOToggle<CR>


"goyo
let g:goyo_linenr=0

" mapping escape to ctrl c
" map <Esc><C-c> <CR>

" alternater way to save
nnoremap <silent> <C-s> :w<CR>

" resizing
nnoremap <silent> <C-Down>    :resize -2<CR>
nnoremap <silent> <C-Up>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

" Trees and File Explorers
nnoremap <C-n> :NvimTreeToggle<cr>
nnoremap <leader>n :Lex! <cr>

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" Auto formatting use neoformat
augroup NeoformatAutoFormat
    autocmd!
    autocmd BufWritePre *.{js,jsx,ts,tsx,css,html} Neoformat
augroup END

let g:neoformat_try_formatprg = 1
" nnoremap <leader>ap :Neoformat <CR>

" Important for colorschemes
nmap <F5> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let g:rainbow_active = 1
let g:dashboard_default_executive ='telescope'

" Requiring telescope settings
lua require("telescope-pref")
" lua require("airline")
lua require("treesitter")
lua require("cmp-config")
lua require("lspconf")

lua << EOF
  require("todo-comments").setup()
  require("nvim-tree").setup{
    view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'right',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
   }
  }

require('lualine').setup()

-- require('staline').setup{
--  mode_colors = {
--   n = "#2B78BB",
--   i = "#6FECB9",
--   c = "#e27d60",
--   v = "#9647EB",   -- etc..
--  }
-- }

require('Comment').setup({
    pre_hook = function(ctx)
        -- Only calculate commentstring for tsx filetypes
        if vim.bo.filetype == 'typescriptreact' then
            local U = require('Comment.utils')

            -- Detemine whether to use linewise or blockwise commentstring
            local type = ctx.ctype == U.ctype.line and '__default' or '__multiline'

            -- Determine the location where to calculate commentstring from
            local location = nil
            if ctx.ctype == U.ctype.block then
                location = require('ts_context_commentstring.utils').get_cursor_location()
            elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
                location = require('ts_context_commentstring.utils').get_visual_start_location()
            end

            return require('ts_context_commentstring.internal').calculate_commentstring({
                key = type,
                location = location,
            })
        end
    end,
})
require('nvim-ts-autotag').setup()
EOF
let g:nvim_tree_show_icons = {
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
