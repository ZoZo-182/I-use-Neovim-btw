-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use {
	  'nvim-telescope/telescope.nvim', version = '*',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'},
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } }
  }

  use({
	  'catppuccin/nvim',
	  as = 'catppuccin',
	  config = function ()
		  vim.cmd.colorscheme("catppuccin")
	  end
  })

  -- synthwave84
  use({
	  "artanikin/vim-synthwave84",
	  as = "synthwave84",
	  config = function ()
		  vim.cmd.colorscheme("synthwave84")
	  end
  })

  -- aether
use {
    "bjarneo/aether.nvim",
    branch = "v2",
    as = "aether",
    config = function()
        require("aether").setup({
            transparent = false,
            colors = {
                bg = "#1c1e26",
                bg_dark = "#1c1e26",
                bg_highlight = "#6c6f93",
                fg = "#fadad1",
                fg_dark = "#fadad1",
                comment = "#6c6f93",
                red = "#e95678",
                orange = "#ec6a88",
                yellow = "#fab795",
                green = "#29d398",
                cyan = "#59e3e3",
                blue = "#26bbd9",
                purple = "#ee64ac",
                magenta = "#f075b5",
            },
        })
        vim.cmd.colorscheme("aether")
    end
}

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use('olrtg/nvim-emmet')
  use('brenoprata10/nvim-highlight-colors')

  -- lsp configuration
  use ('neovim/nvim-lspconfig')
  use ('williamboman/mason.nvim')       -- LSP installer
  use ('williamboman/mason-lspconfig.nvim') --bridge Mason with lspconfig
  
  -- autocompletion
  use ('hrsh7th/nvim-cmp')
  use ('hrsh7th/cmp-nvim-lsp')
  use ('hrsh7th/cmp-buffer')
  use ('hrsh7th/cmp-path')
  use ('saadparwaiz1/cmp_luasnip')
  use ('L3MON4D3/LuaSnip')
  use ('rafamadriz/friendly-snippets')
  
  end)

  
