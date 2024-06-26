require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- General Purpose, Low-Level Plugins
  use 'dstein64/vim-startuptime'

  -- Lualine and icons
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Nerdtree alternative
  use 'kyazdani42/nvim-tree.lua'

  -- Git integration
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'

  -- Navigation
  use 'justinmk/vim-sneak'
  use { 'junegunn/fzf', run = 'fzf#install()' }

  use 'junegunn/fzf.vim'

  -- UI And Theming
  use 'NLKNguyen/papercolor-theme'
  use 'norcalli/nvim-colorizer.lua'
  use 'lukas-reineke/indent-blankline.nvim'

  -- My IDE
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'puremourning/vimspector'

  -- Some syntax higlighting
  use 'zah/nim.vim'

  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function ()
      require"octo".setup()
    end
  }

  use { 'nvim-treesitter/nvim-treesitter', run = 'TSUpdate' }
end)
