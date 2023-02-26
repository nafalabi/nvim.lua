local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
--
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

map('n', '<A-e>', '<Cmd>NvimTreeFindFile<CR>', opts)
--map('n', '<C-E>', '<Cmd>NvimTreeFindFile<CR>', opts)
map('n', '<A-b>', '<Cmd>NvimTreeToggle<CR>', opts)
map('n', '<A-0>', '<Cmd>NvimTreeFocus<CR>', opts)

