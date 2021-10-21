call plug#begin(stdpath('data') . '/plugged')
" Theme Plugins
Plug 'morhetz/gruvbox'

" Navigation
Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'
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

" Autocompletion (LSP Support for VIM and NVIM)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Neovim Tree Sitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Text editing productivity plugins 
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/tagalong.vim'
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc-pairs'

" Text reading productivity plugins
Plug 'HerringtonDarkholme/yats.vim'
Plug 'majutsushi/tagbar'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'metakirby5/codi.vim'

" Formating
Plug 'fatih/vim-go'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

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
