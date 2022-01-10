" Great colorschemes (replace below)
"      \ 'colorscheme': 'sonokai',
"      \ 'colorscheme': 'one',
"      \ 'colorscheme': 'gruvbox',

set noshowmode

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
