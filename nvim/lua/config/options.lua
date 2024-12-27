-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Draw a border on the 81st column
vim.opt.colorcolumn = "81"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.background = "light"

-- Define custom highlight colors
vim.api.nvim_command("highlight NotifyINFOTitle guifg=#65993e")
vim.api.nvim_command("highlight NotifyINFOIcon guifg=#65993e")
