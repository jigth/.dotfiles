" Basic remaps
let mapleader=" "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

"" Copy paste facilities (need knowing a little about VIM REGISTERS to use)
""" Copy paste from the clipboard in Linux (for Windows systems use the
""" remaps that has '*' instead of '+')

" Using the '+' register
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>y "+y
vnoremap <leader>p "+p

" Using the '*' register
vnoremap <leader><leader>y "*y
vnoremap <leader><leader>p "*p
nnoremap <leader><leader>y "*y
nnoremap <leader><leader>p "*p



""Deactivate Exmode (which always open itself by accident :p)
nnoremap Q <Nop>

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
