" First of all Deactivate the pesky Exmode (which always open itself by accident :p)
nnoremap Q <Nop>

" Unmap F1, equivalent to calling :h by default
map <F1> <nop>

" Basic remaps
let mapleader=" "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Runtime Path Magic!
"" Update the vim runtime path using the path of the current file (to search
"" and edit files only within that directory, avoid doing 'cd' manually)
nnoremap <leader>cd :cd %:h<CR>
"" Come back to the previous runtime path used by vim
nnoremap <F8> :cd -<CR>

" Easy movements between windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Vim :term key mappings
"" Exits insert mode (when using :term) with ESC key (or Control-C) pressed twice
tnoremap <ESC><ESC> <C-\><C-N>
tnoremap <C-c><C-c> <C-\><C-N>



" F<x> mappings (Functions mappings)

"" Toggle mouse on and off (VIM). 
map <F3> <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>


" Copy paste facilities (need knowing a little about VIM REGISTERS to use)
" Copy paste from the clipboard in Linux (for Windows systems use the
" remaps that has '*' instead of '+')

"" Using the '+' register
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>y "+y
vnoremap <leader>p "+p

"" Using the '*' register
vnoremap <leader><leader>y "*y
vnoremap <leader><leader>p "*p
nnoremap <leader><leader>y "*y
nnoremap <leader><leader>p "*p

" Folding
nnoremap <leader>u zR
nnoremap <leader>U zM

"  Some Bindings taken from 'ThePrimagen'
""  Make 'Y' copy line text after the coursor
nnoremap Y y$

    
"" Move text lines/regions up and down easily
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Keeping text searches 'n' and 'N' and line joining 'J' centered when pressing 'n', 'N' or 'J'
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z

"  Convert word to autoclosing tag (used for React, Vue, and self closing
"  components/tags without requiring any snippet)
nnoremap <leader>; bi<<ESC>ea /><ESC>

" Open new terminal in split windows (for executing some commands FASST)
nnoremap <leader>t <C-w>v<c-w>l:term<CR>i

" Map jj to Escape key, pressing jj twice very fast in insert mode will go to
" normal mode
imap jj <esc>

" Tree explorer (Nerdtree, Ex, Chadtree, NvimTree, or any other kind of tree)
"nnoremap <leader>v :CHADopen <CR>
nnoremap <leader>v :NERDTreeToggle <CR>


" Git Keybindings (May depend on Git plugin integrations for Neovim like
" "Fugitive"
nnoremap <leader>gp :Git push <CR>
