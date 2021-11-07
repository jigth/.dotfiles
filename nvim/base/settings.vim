"" Tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"" Line numbers
set relativenumber
set number

"" Search
set nohlsearch

"" Buffers
set hidden  " Keeps buffers alive and untouched even when not saved (avoid using too much '!')

"" Scrolling
set scrolloff=3  " Help to see 3 more lines when the coursor is at the bottom or at the top

"" Undo handling  (Alternative to using swap files as Emacs does by default)
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile

"" Screen settings
set nowrap
set colorcolumn=80
set signcolumn=yes  " Helper column for status messages
set cmdheight=2  " A little bit more space to show commands' responses
set guicursor=
set numberwidth=1

"" Miscelanea
set nocompatible
set exrc  " Allow custom .vimrc per directory to execute different projects with different vim configs
set ignorecase
"set clipboard^=unnamed,unnamedplus "NOTE: Uncomment to share clipboard between
                                    "Neovim and the system (like VSCode and most text editors do!)
set noerrorbells
set encoding=utf-8
set updatetime=300  " Less delays in some actions
set backupcopy=yes  " Allows parcel to do live reload in VIM
let g:netrw_dirhistmax=0 " Avoid creating .netrwhist history file

"" Syntax Highlighting
autocmd BufNewFile,BufRead *.env* set syntax=sh
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd! BufNewFile,BufRead *.svelte set ft=html

" Allow nvim-colorizer to work properly
set termguicolors

" Intellisense autocompletion menu options
set completeopt=menuone,noinsert,noselect

" language providers
let g:python3_host_prog = '/usr/bin/python3'

" Recognize languages
let g:tex_flavor = "latex"
