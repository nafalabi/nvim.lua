require('telescope').load_extension('lazygit')

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>gg', '<Cmd>LazyGit<CR>', opts)
