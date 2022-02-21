call plug#begin(stdpath('data') . '/plugged')

" Themes
"" Hight Contrast, Bright colors (Good when environment light is high)
""" Nice ones
Plug 'sainnhe/sonokai' " I like this one *A LOT*, but lacks some syntax coloring in JSON objects
Plug 'kaicataldo/material.vim' " Bright code, light colored commentaries, better syntax colors for JSON objects than 'sonokai'

""" Not bad
Plug 'drewtempelmeyer/palenight.vim' " Good enough, But I like the 'sonokai' and 'material' a bit more
Plug 'dracula/vim' " Very bright contrast except for comments

"" Medium contrast (Good with more moderate environment light)
""" Nice ones
Plug 'sainnhe/edge' " Like the good 'sonokai' theme, but the non-commented code is a bit less bright
Plug 'rakr/vim-one'

""" Light colored commentaries
Plug 'ghifarit53/tokyonight-vim'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim' " Miriage variant is good
Plug 'kabbamine/yowish.vim'
Plug 'preservim/vim-colors-pencil' " Nice light variation (when using background=light)

""" Medium contrast but some annoying bright colors
Plug 'morhetz/gruvbox' " Annoying GREEN and red

""" Very visible comments (annoying, maybe useful for a specific use case)
Plug 'tomasiser/vim-code-dark' " Similar to VSCode, mostly used to follow VSCode tutorials seamlessly

"" Low contrast (Maybe best for low light environments)
""" Nice ones
Plug 'sainnhe/gruvbox-material'



" Navigation

"" Nvim Tree
Plug 'kyazdani42/nvim-tree.lua'
"Plug 'kyazdani42/nvim-web-devicons' " for file icons

"" Telescope NVIM
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

"" FZF (fallback if Telescope fails for some specific Neovim version)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

"" Better, more precise, keyboard motions
Plug 'easymotion/vim-easymotion'

"" Lightline
Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'


" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" Emmet
Plug 'mattn/emmet-vim'


" Linting (Currently, 'LSP Config' and/or 'CoC Nvim' provides linting, this can be used as
" fallback if desired)
"Plug 'dense-analysis/ale'


" LSP Neovim

"" Basic config
"Plug 'neovim/nvim-lspconfig'
"Plug 'glepnir/lspsaga.nvim'

"" CoC autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" cmp nvim (autocompletition)
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"" Pretty icons (for LSP)
"Plug 'onsails/lspkind-nvim'


" Text reading productivity
Plug 'majutsushi/tagbar'
Plug 'metakirby5/codi.vim'


" Neovim Tree Sitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'


" Highlighting
Plug 'glench/vim-jinja2-syntax' " Jinja and Nunjucks syntax highlighting
Plug 'othree/yajs.vim' " Better JavaScript highlighting
Plug 'HerringtonDarkholme/yats.vim' " Better TypeScript highlighting (especially the JSX markup)
" Plug 'jparise/vim-graphql'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hashivim/vim-terraform'


" VueJS
Plug 'posva/vim-vue'


" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'


" Text editing productivity
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish' " Better substitution, abbreviation and text-changing operations
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'alvan/vim-closetag'
"Plug 'mbbill/undotree' " Improved undo and redo (like Git but without the need of a repo)


" Testing
Plug 'vim-test/vim-test'


" Debugging
Plug 'puremourning/vimspector'
Plug 'mfussenegger/nvim-dap'

" Formating
Plug 'fatih/vim-go'
"Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier'
Plug 'editorconfig/editorconfig-vim'

" Better developer Experience

"" Maximize Toggle windows (specially useful for debugging)
Plug 'szw/vim-maximizer'

"" Highlight colors like #123 from the terminal window
Plug 'norcalli/nvim-colorizer.lua'

"" Preview Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
Plug 'skanehira/preview-markdown.vim' " Similar to the previous one but runs without browser

"" Preview Different types of documents with pandoc (on current buffer)
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax' 


" Welcome Screen
Plug 'mhinz/vim-startify'


" TEST: Plugins beings tested
Plug 'preservim/vimux' " Vim Integration with Tmux (good, automatic miniwindows)
"Plug 'tpope/vim-dispatch' " Great for asyncronous execution of things


" Explorer Icons
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()



" Transparent sign column for the used theme
highlight SignColumn guibg=none
