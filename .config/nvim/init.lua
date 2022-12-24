vim.opt.termguicolors = true

-- Vimspector
vim.g['vimspector_enable_mappings'] = 'HUMAN'


require('plugins')
require('defaults')
require('completion')
require('ui')
require('keymaps')
