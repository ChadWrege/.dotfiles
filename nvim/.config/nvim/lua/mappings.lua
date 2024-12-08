require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Disable mappings
local nomap = vim.keymap.del

-- Disable the existing key mappings for tmux navigation
nomap('n', '<C-h>')  -- Unbind <C-h> for window left
nomap('n', '<C-j>')  -- Unbind <C-j> for window down
nomap('n', '<C-k>')  -- Unbind <C-k> for window up
nomap('n', '<C-l>')  -- Unbind <C-l> for window right

map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")
map("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>")
