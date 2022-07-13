vim.opt.termguicolors = true

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- General Purpose, Low-Level Plugins
Plug 'dstein64/vim-startuptime'

-- Lualine and icons
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

-- Nerdtree alternative
Plug 'kyazdani42/nvim-tree.lua'

-- Git integration
Plug 'lewis6991/gitsigns.nvim'
Plug 'ojroques/nvim-bufbar'
Plug 'tpope/vim-fugitive'

-- Navigation
Plug 'justinmk/vim-sneak'
Plug('ibhagwan/fzf-lua', { branch = 'main' })

-- UI And Theming
Plug 'tanvirtin/monokai.nvim'
Plug 'norcalli/nvim-colorizer.lua'

-- Language Support
Plug 'udalov/kotlin-vim'

-- My IDE
Plug('neoclide/coc.nvim', { branch = 'release' })

vim.call('plug#end')

require('defaults')
require('completion')
require('ui')
require('keymaps')
