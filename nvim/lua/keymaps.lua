
-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- make space as the leader key
vim.g.mapleader = " "

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows (delta: 2 lines)
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- NeoTree Open
vim.keymap.set('n', '<C-b>', ':Neotree toggle right<CR>', opts)

-- Buffers
vim.keymap.set('n', '<leader>bs', ':w<CR>', opts) -- Save buffer
vim.keymap.set('n', '<leader>bk', ':bd<CR>', opts) -- Close buffer

-- Tabs
vim.keymap.set('n', '<leader><Tab>', ':bnext<CR>', opts)

-- Splits
vim.keymap.set("n", "<leader>ws", ":split<CR>", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { desc = "Switch Split" })
vim.keymap.set("n", "<leader>wc", ":close<CR>", { desc = "Close Split" })

-----------------
-- Visual mode --
-----------------

-- Keep selection when indenting
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

