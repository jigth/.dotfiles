"let g:gruvbox_bold = 0
"let g:transparent_bg = 1

"let g:gruvbox_color_column = 'bg1'

" Setup contrast for dark and light themes
let g:gruvbox_contrast_dark = 'soft'

" Configure color of Gruvbox SignColumn and ColorColumns                                                               
highlight ColorColumn ctermbg=0 guibg=grey

" Transparent bg and signcolumn
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
highlight SignColumn guibg=none

" Set color of numbers
highlight LineNr guifg=#61b5f0

colorscheme gruvbox
