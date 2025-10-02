-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.o.bg = "light"
vim.g.python3_host_prog = "~/.virtualenvs/neovim/bin/python"
local opt = vim.opt
opt.relativenumber = false
opt.wrap = true
