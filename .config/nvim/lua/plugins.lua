require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Lualine and icons
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      local function lualine_fullpath()
        return vim.fn.expand('%')
      end
      local colors = {
        red                    = '#df0000',
        green                  = '#008700',
        blue                   = '#4271ae',
        pink                   = '#d7005f',
        olive                  = '#718c00',
        navy                   = '#005f87',
        orange                 = '#d75f00',
        purple                 = '#8959a8',
        aqua                   = '#3e999f',
        foreground             = '#4d4d4c',
        background             = '#F5F5F5',
        window                 = '#efefef',
        status                 = '#3e999f',
        error                  = '#ffafdf',
        statusline_active_fg   = '#efefef',
        statusline_active_bg   = '#005f87',
        statusline_inactive_fg = '#4d4d4c',
        statusline_inactive_bg = '#dadada',
      }
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = {
            normal = {
              a = {
                fg = colors.foreground,
                bg = colors.background,
                gui = 'bold',
              },
              b = { fg = colors.statusline_active_fg, bg = colors.status },
              c = { fg = colors.statusline_active_fg, bg = colors.statusline_active_bg },
            },
            insert = { a = { fg = colors.blue, bg = colors.background, gui = 'bold' } },
            visual = { a = { fg = colors.background, bg = colors.orange, gui = 'bold' } },
            replace = { a = { fg = colors.background, bg = colors.pink, gui = 'bold' } },
            inactive = {
              a = { fg = colors.foreground, bg = colors.statusline_inactive_bg, gui = 'bold' },
              b = { fg = colors.foreground, bg = colors.statusline_inactive_bg },
              c = { fg = colors.foreground, bg = colors.statusline_inactive_bg },
            },
          },
          component_separators = { left = '|', right = '|'},
          section_separators = { left = '|', right = '|'},
          disabled_filetypes = {
            'NvimTree',
          },
          always_divide_middle = true,
          globalstatus = false,
        },
        sections = {
          lualine_a = {'mode', 'g:coc_status'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = { lualine_fullpath },
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        extensions = {}
      })
    end
  }
  use 'kyazdani42/nvim-web-devicons'

  -- Nerdtree alternative
  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup({
        sort = {
          sorter = 'case_sensitive',
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end
  }


  -- Navigation
  use 'justinmk/vim-sneak'
  use {
    'ibhagwan/fzf-lua',
    config = function()
      require'fzf-lua'.setup({
        winopts = {
          height = 0.8,
          width = 0.4,
          border = 'rounded',
          fullscreen = false,
        },
      })
    end
  }


  -- UI And Theming
  use 'NLKNguyen/papercolor-theme'
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }

  -- My IDE
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'puremourning/vimspector'
  use 'lervag/vimtex'
  use 'github/copilot.vim'
  -- Git integration
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup({
	current_line_blame = true,
	numhl = true,
	linehl = true,
	word_diff = true,
      })
    end
  }
  use 'tpope/vim-fugitive'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        auto_install = true,
        ensure_installed = {
          'c', 'lua', 'vim', 'vimdoc', 'query', 'cpp', 'python', 'elixir',
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      }
    end
  }
  use { 'nvim-treesitter/nvim-treesitter-context' }
end)
