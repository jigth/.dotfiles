" Basic remaps
let mapleader=" "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

""Folding
nnoremap <leader>u zR
nnoremap <leader>U zM

"" Some Bindings taken from 'ThePrimagen'
""" Make 'Y' copy line text after the coursor
nnoremap Y y$

""" Convert word to autoclosing tag (required 'surround-vim' plugin)
nnoremap <leader>; bi<<ESC>ea /><ESC>
    
""" Move text lines/regions up and down easily
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
"inoremap <C-j> <esc>:m .+1<CR>==
"inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

""" Keeping text searches 'n' and 'N' and line joining 'J' centered when pressing 'n', 'N' or 'J'
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z
