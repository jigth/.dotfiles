-- Some config was taken from chris@machine

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommands that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use protected call when requiring packer so we don't get error on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("Couldn't start up packer")
    return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins list
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'joshdick/onedark.vim'
    use 'tomasr/molokai'

    -- Git Integration
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- Emmet
    use 'mattn/emmet-vim'

    -- CoC Language server plugin
    --use { 
    --    'neoclide/coc.nvim',
    --    branch = 'release',
    --    ft = { 'svelte', 'vue', 'go' }
    --}

    -- Native LSP language server system (for different languages than CoC).
    use {
        "williamboman/nvim-lsp-installer",
        { 
            "neovim/nvim-lspconfig", 
            after = "nvim-lsp-installer",
        }
    }

    -- cmp plugins
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    
    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    
    -- Improved match with % character in vim
    use { 'andymass/vim-matchup', event = 'VimEnter' }
  
    use 'nvim-lua/popup.nvim' -- Popup windows API from vim in Neovim
    use 'nvim-lua/plenary.nvim' -- Useful functions used by a lot of plugins
end)
