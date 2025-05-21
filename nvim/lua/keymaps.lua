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
vim.keymap.set('n', '<C-S-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-S-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-S-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-S-Right>', ':vertical resize +2<CR>', opts)

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

-- movement
vim.keymap.set("n", "<C-Right>", "w", opts)  -- Ctrl + Right: Move forward by word
vim.keymap.set("n", "<C-Left>", "b", opts)   -- Ctrl + Left: Move backward by word
vim.keymap.set("n", "<A-Right>", "$", opts)  -- Alt + Right: Move to end of line
vim.keymap.set("n", "<A-Left>", "0", opts)   -- Alt + Left: Move to beginning of line
vim.keymap.set("n", "<A-Up>", "gg", opts)    -- Alt + Up: Move to beginning of file
vim.keymap.set("n", "<A-Down>", "G", opts)   -- Alt + Down: Move to end of file


-- quickfix list
vim.keymap.set("n", "<A-j>", ":cn<CR>", opts)
vim.keymap.set("n", "<A-k>", ":cp<CR>", opts)


-----------------
-- Visual mode --
-----------------

-- Keep selection when indenting
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- movement
vim.keymap.set("v", "<C-Right>", "w", opts)  -- Ctrl + Right: Move forward by word
vim.keymap.set("v", "<C-Left>", "b", opts)   -- Ctrl + Left: Move backward by word
vim.keymap.set("v", "<A-Right>", "$", opts)  -- Alt + Right: Move to end of line
vim.keymap.set("v", "<A-Left>", "0", opts)   -- Alt + Left: Move to beginning of line
vim.keymap.set("v", "<A-Up>", "gg", opts)    -- Alt + Up: Move to beginning of file
vim.keymap.set("v", "<A-Down>", "G", opts)   -- Alt + Down: Move to end of file

-----------------
-- Insert mode --
-----------------

-- movement
-- vim.keymap.set("i", "<C-Right>", "<C-o>w", opts)  -- Ctrl + Right: Move forward by word
-- vim.keymap.set("i", "<C-Left>", "<C-o>b", opts)   -- Ctrl + Left: Move backward by word
vim.keymap.set("i", "<A-Right>", "<C-o>$", opts)  -- Alt + Right: Move to end of line
vim.keymap.set("i", "<A-Left>", "<C-o>0", opts)   -- Alt + Left: Move to beginning of line
vim.keymap.set("i", "<A-Up>", "<C-o>gg", opts)    -- Alt + Up: Move to beginning of file
vim.keymap.set("i", "<A-Down>", "<C-o>G", opts)   -- Alt + Down: Move to end of file
