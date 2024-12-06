-- Grab lua/config/lazy.lua 
require("config.lazy")

-- My Default Configurations
-- My Colorscheme (installed under plugins)
vim.cmd.colorscheme("catppuccin")

-- Tab Configuration
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.tabstop = 2            -- Number of spaces for a tab
vim.opt.softtabstop = 2        -- Number of spaces for a <Tab> in insert mode
vim.opt.shiftwidth = 2         -- Number of spaces for auto-indent

-- Line Numbers
vim.opt.relativenumber = true  -- Relative line numbers
-- vim.opt.number = true          -- Absolute number for the current line
-- vim.opt.cursorline = true      -- Highlight the current line
