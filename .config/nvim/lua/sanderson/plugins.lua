-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  -- parser that creates asts for syntax highlighting and other dependent plugins
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  -- treesitter-textobjects for commands that concern text as objects
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- easier commenting
  use {'tpope/vim-commentary'}

  -- easier text wrapping
  use {'tpope/vim-surround'}

  -- support mermaid diagram syntax highlighting
  use {'mracos/mermaid.vim' }

  -- manage multiple terminals in vim
  use {'akinsho/toggleterm.nvim', tag = '*', config = function() require("toggleterm").setup() end}

  -- tmux integration
    use({
        "aserowy/tmux.nvim",
        config = function() return require("tmux").setup() end
    })

  -- use {'davidhalter/jedi-vim'}
  -- use {'Shougo/deoplete.nvim', run=':UpdateRemotePlugins'}
  -- use {'zchee/deoplete-jedi'}

  -- fuzzy find helper
  use { 
	'nvim-telescope/telescope.nvim',  tag = '0.1.0' ,
	requires = { { 'nvim-lua/plenary.nvim'} }
  }

  -- nice formatting colors
  use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
  }

  -- better mode/line status information and formatting
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- file browser
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      }
  }

  -- show key objects in your file
  use 'majutsushi/tagbar'

  -- create and navigate with tags
  use 'ludovicchabant/vim-gutentags'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use 'danilamihailov/beacon.nvim'

  -- color scheme
  use 'Mofiqul/dracula.nvim'

  -- use 'Olical/conjure'

  use 'tpope/vim-fugitive'

end)

