vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<Esc>', ':nohl<CR>')

-- move focus
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]])

-- move buffer tab
vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>')

for i = 1, 9 do
  vim.keymap.set('n', '<leader>' .. i, function()
    require('bufferline').go_to(i, true)
  end)
end

-- neo-tree
vim.keymap.set('n', '<C-n>', function()
  vim.cmd('Neotree float toggle')
end, { silent = true })

vim.keymap.set('n', '<leader>n', function()
  vim.cmd('Neotree toggle position=left')
end, { silent = true })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Esc 누르면 영어로
-- vim.keymap.set('n', '<Esc>', function()
--   os.execute('im-select com.apple.keylayout.ABC')
--   return '<Esc>'
-- end, { expr = true })

-- Insert 나갈 때도 영어로
vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    os.execute('im-select com.apple.keylayout.ABC')
  end,
})

-- gitsigns
vim.keymap.set('n', '<leader>p', ':Gitsigns preview_hunk_inline<CR>')

-- noegit
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Open Neogit UI' })

-- snacks
vim.keymap.set({ 'n', 't' }, '<leader>t', function()
  require('snacks').terminal()
end)

vim.keymap.set('t', '<C-c>', [[<C-c>]])

-- trouble.nvim
vim.keymap.set('n', '<leader>xx', ':Trouble diagnostics toggle<CR>')
