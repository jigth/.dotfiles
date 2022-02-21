" by default with Neovim. 
" NOTE: Some configurations in this file are put explicitly although they come
" That's just me following the principle "Explicit is better than implicit"


" Leave this on top as it affects other options
set nocompatible


" General configs (some of these were taken from 'Mastering Vim Quickly)
set history=1000
set showcmd
set showmode
set autoread " Automatically reread files if unmodified inside vim
set hidden  " Keeps buffers alive and untouched even when not saved (avoid using too much '!')
set backspace=indent,eol,start  " Allow backspacing over indentation, line breaks and insertion start
set exrc  " Allow custom .vimrc / .nvimrc per directory to execute different projects with different vim configs
set secure  " Disallow 'autocmd' in local .vimrc / .nvimrc files
set ignorecase
set noerrorbells
set encoding=utf-8
set updatetime=300  " Less delays in some actions
set nomodeline  " Ignore file's modelines, use vimrc configs instead (better security)


" Path, Wildmenu, Wildmode (Taken from ThePrimeagen .dotfiles)
set path+=**
set wildmenu  " Show little menu when pressing tab (instead of cycling without menu) - Activated by default in Neovim
set wildmode=longest,list,full " Nice menu that shows a list of available completions for tab complete

"" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*


" UI Settings
set laststatus=2  " Allow status bar to show up (comes activated by default in Neovim but not Vim)
set ruler
set cursorline


" UX, DX Settings
set backupcopy=yes  " Allow to do live reload or HMR in VIM / Neovim
set linebreak  " Avoid wrapping a line in the middle of a word
set nohlsearch
set scrolloff=3  " Help to see 3 more lines when the coursor is at the bottom or at the top
set sidescrolloff=5  " Keep some columns to the left and right of the cursor when reaching screen width limits
set confirm  " Display confirmation dialog if closing unsaved file


" Tabs, Spaces, 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab


" indentation rules
"set smartindent
filetype plugin indent on " Smart indentation (replaces 'smartindent' option)
set autoindent


" Mouse support (Except on insert mode because its uncomfortable on laptops)
set mouse=nv
" Use 'set mouse=a' instead to activate the mouse in all modes


" Line numbers
set relativenumber
set number


" Undo handling  (Alternative to using swap files as Vim and Emacs do by default)
set noswapfile
set nobackup " Disable backup files
set undodir=~/.nvim/undodir
set undofile


" Screen settings
set nowrap
"set colorcolumn=80 " Visual column at the caracter 80 (commented out cuz' I
"don't like it that much)
set signcolumn=yes  " Helper column for status messages
set cmdheight=2  " A little bit more space to show commands' responses
set guicursor= " Let the cursor be always a block
set numberwidth=1


" Allow nvim-colorizer to work properly
set termguicolors


" Intellisense autocompletion menu options
set completeopt=menuone,noinsert,noselect


" Autocommands
"" Syntax Highlighting
autocmd BufNewFile,BufRead *.env* set syntax=sh
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd! BufNewFile,BufRead *.svelte set ft=html
autocmd! BufNewFile,BufRead *.njk set ft=jinja "" Requires the PLUGIN 'glench/vim-jinja2-syntax'

"" Changes the window-local current directory to be the same as the directory of the current file
autocmd VimEnter * silent! lcd %:p:h

"" Autosave
autocmd CursorHoldI,CursorHold <buffer> silent :wall


" Filetypes
filetype plugin on


" Editor Internal Variables
let g:netrw_dirhistmax=0 " Avoid creating .netrwhist history file
let g:python3_host_prog = '/usr/bin/python3' " Python language provider
let g:tex_flavor = 'latex' " Recognize Latex markup language
