-- Let us use jj to esc
vim.keymap.set('i', 'jj', '<Esc>', {})

-- Fuzy finder
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader> ', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>f', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })

-- Neo-tree.vim
vim.keymap.set('n', '<leader>t', ':Neotree reveal=true position=left toggle=true<CR>', {})
vim.keymap.set('n', '-', ':Neotree reveal=true position=current dir=%:p:h<CR>', {})

-- remove trailing whitespace
vim.keymap.set('n', '<leader>W', ':%s/\\s\\+$//<CR>', {})
