vim.g.mapleader = " "

-- General Remaps

vim.keymap.set("n", "<leader>h", vim.cmd.Oil)

vim.keymap.set('n', '<C-j>', '<cmd>move+1<CR>')
vim.keymap.set('n', '<C-k>', '<cmd>move-2<CR>')
vim.keymap.set('v', '<C-j>', ":move '>+1<CR>gv", { desc = 'Move visual selection down' })
vim.keymap.set('v', '<C-k>', ":move '<-2<CR>gv", { desc = 'Move visual selection up' })

vim.keymap.set('n', '<Esc>', '<cmd>nohl<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
