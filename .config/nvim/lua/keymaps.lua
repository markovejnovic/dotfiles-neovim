vim.keymap.set('n', '<C-f>', ':FzfLua files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-f>', ':FzfLua oldfiles<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-b>', ':FzfLua buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-g>', ':FzfLua grep<CR>', { noremap = true, silent = true })

--- Keyboard Mappings
vim.keymap.set('n', ',nn', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-p>', ':let @+ = expand("%")<CR>')

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

vim.keymap.set('i', '<Tab>',
    'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"',
    { noremap = true, silent = true, expr = true }
)
vim.api.nvim_set_keymap('i', '<CR>',
    'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"',
    {silent = true, expr = true, noremap = true}
)


-- Vimspector
vim.keymap.set('n', '<Leader>di', '<Plug>VimspectorBalloonEval')
vim.keymap.set('x', '<Leader>di', '<Plug>VimspectorBalloonEval')
