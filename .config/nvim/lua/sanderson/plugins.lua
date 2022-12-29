-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  use 'nvim-treesitter/nvim-treesitter-textobjects'

  use {'tpope/vim-commentary'}

  use {'tpope/vim-surround'}

  use {  'akinsho/toggleterm.nvim' }

  use { 
	'nvim-telescope/telescope.nvim',  tag = '0.1.0' ,
	requires = { { 'nvim-lua/plenary.nvim'} }
  }

  use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      }
  }

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use 'danilamihailov/beacon.nvim'

  use 'Mofiqul/dracula.nvim'

  use 'Olical/conjure'

  use 'majutsushi/tagbar'

end)

