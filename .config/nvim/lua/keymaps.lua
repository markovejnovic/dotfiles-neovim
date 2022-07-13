-- Keyboard Mappings
vim.keymap.set('n', ',nn', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-F>', ':FzfLua files<CR>')

-- Easier window navigation
vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-J>', '<C-W>j')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-L>', '<C-W>l')
vim.keymap.set('n', '<C-\\>', '<C-W>v')
vim.keymap.set('n', '<C-_>', '<C-W>s')

-- COC
vim.keymap.set('n', '[g', '<Plug>(coc-diagnostic-prev)')
vim.keymap.set('n', ']g', '<Plug>(coc-diagnostic-next)')
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)') -- Jump to def.
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)') -- Jump to typedef.
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)') -- Jump to source
vim.keymap.set('n', 'gr', '<Plug>(coc-references)') -- Jump through references.
