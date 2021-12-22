call plug#begin(stdpath('data') . '/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'dunstontc/vim-vscode-theme'
Plug 'lsdr/monokai'
Plug 'dracula/vim'
Plug 'romainl/Apprentice'
Plug 'jnurmine/Zenburn'
Plug 'antlypls/vim-colors-codeschool'
Plug 'AlessandroYorba/Sierra/'


" Navigation

"" Fonts Icons for the file explorer
Plug 'lambdalisue/nerdfont.vim'

"" Nvim Tree
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons' " for file icons

"" Lightline
Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'


" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" Emmet
Plug 'mattn/emmet-vim'


" Linting
Plug 'dense-analysis/ale'


" LSP Neovim

"" Basic config
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

"" cmp nvim (autocompletition)
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"" Pretty icons
Plug 'onsails/lspkind-nvim'


" Neovim Tree Sitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'


" Highlighting
Plug 'glench/vim-jinja2-syntax'


" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'


" Text editing productivity
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'


" Text reading productivity
Plug 'majutsushi/tagbar'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'metakirby5/codi.vim'

" Formating
Plug 'fatih/vim-go'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier'
Plug 'editorconfig/editorconfig-vim'

" VueJS
Plug 'leafOfTree/vim-vue-plugin'

" Better developer Experience

"" Highlight colors like #123 from the terminal window
Plug 'norcalli/nvim-colorizer.lua'

"" Preview Different types of documents with pandoc (on current buffer)
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax' 

"" Preview Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'skanehira/preview-markdown.vim'

"" Telescope NVIM
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

"" FZF (fallback if Telescope fails for some specific Neovim version)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'


" Welcome Screen
Plug 'mhinz/vim-startify'


" TEST: Plugins beings tested
Plug 'preservim/vimux'


call plug#end()



" Transparent sign column for the used theme
highlight SignColumn guibg=none
