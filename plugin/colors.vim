" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

function! Transparency()
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNR guibg=NONE ctermbg=NONE
    hi CursorLineNR guibg=NONE ctermbg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    hi MsgArea ctermbg=NONE guibg=NONE
    hi NonText ctermbg=NONE guibg=NONE
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 
    " Just for zenburn
    if g:colors_name=="zenburn"
        hi Visual guibg=#5E5E59 ctermbg=444 
    endif
endfunction


function Contrastify()
    
    hi Normal guibg=#000000
    hi LineNR guibg=#000000 guifg=#66A1C9
    hi CursorLineNR guibg=NONE guifg=#FFBA00
    hi SignColumn guibg=#000000
    hi CursorLine guibg=#111111 guifg=NONE
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 
    hi NonText guibg=#000000
    
endfunction

function WarmDark()

    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 
    hi! link NonText Normal

endfunction

function ItalicsEnable()

  highlight Comment cterm=italic gui=italic
  highlight StorageClass cterm=italic gui=italic
  highlight Keyword cterm=italic gui=italic
  highlight Typedef cterm=italic gui=italic
  highlight Function cterm=italic gui=italic
  highlight Identifier cterm=italic gui=italic
  highlight Define cterm=italic gui=italic
  highlight Include cterm=italic gui=italic
  highlight typescriptImport cterm=italic gui=italic
  highlight typescriptExport cterm=italic gui=italic
  highlight javascriptImport cterm=italic gui=italic
  highlight javascriptExport cterm=italic gui=italic
  highlight lv16 cterm=italic gui=italic
  highlight lv15 cterm=italic gui=italic

endfunction

map <Space>ew :call Transparency()<CR>
map <Space>bb :call Contrastify()<CR>
map <Space>ww :call WarmDark()<CR>


let g:edge_style = 'default'
" call ItalicsEnable()
set background=dark
colorscheme catppuccin
