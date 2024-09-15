-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Set relative-net mode: means the active window always Zoom Out
opt.winheight = 99

-- set long line warp
opt.wrap = true

-- disable autoformat
vim.g.autoformat = false

-- Enable signcolumn all the time: https://stackoverflow.com/questions/78364323/im-having-trouble-with-flickering-in-lspsaga-nvim
opt.signcolumn = "yes"
