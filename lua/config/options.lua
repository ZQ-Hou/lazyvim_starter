-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable autoformat
vim.g.autoformat = false

local opt = vim.opt

-- Set relative-net mode: means the active window always Zoom Out
opt.winheight = 99

-- set long line warp
opt.wrap = true

-- Enable signcolumn all the time: https://stackoverflow.com/questions/78364323/im-having-trouble-with-flickering-in-lspsaga-nvim
-- opt.signcolumn = "yes:3"
-- opt.signcolumn = "auto"
opt.signcolumn = "no"

-- Use tabs instead of translate to spaces
opt.expandtab = false

-- set tab to 8 spaces width
opt.tabstop = 8

-- Number of spaces to use for each step of (auto)indent.  Used for |'cindent'|, |>>|, |<<|, etc.
opt.shiftwidth = 8
