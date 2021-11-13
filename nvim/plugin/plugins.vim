call plug#begin(stdpath('data') . '/plugged')
" Theme Plugins
Plug 'morhetz/gruvbox'

" Navigation
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ggandor/lightspeed.nvim'
 
" Github
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
 
" Fuzzy Finders
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" Emmet
Plug 'mattn/emmet-vim'

" Linting
Plug 'dense-analysis/ale'

" Autocompletion (LSP)
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" Neovim Tree Sitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Text editing productivity plugins 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" Text reading productivity plugins
Plug 'majutsushi/tagbar'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'metakirby5/codi.vim'

" Formating
Plug 'fatih/vim-go'
Plug 'sbdchd/neoformat'

" VueJS
Plug 'leafOfTree/vim-vue-plugin'

" User Experience Plugins (work more comfortable)
Plug 'norcalli/nvim-colorizer.lua'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }

"" Open media files in Telescope (requires Telescope plugin)
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'  "Great and Powerful Fuzzy Finder
Plug 'nvim-telescope/telescope-media-files.nvim'

call plug#end()
