local utils = require("config.utils")
local map = utils.map

vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.colorcolumn = "80"
vim.opt.mouse = "a"
vim.opt.laststatus = 2
map("n", ";", ":", { noremap = true })
map("n", ":", ";", { noremap = true })
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")
vim.cmd("colorscheme elflord")
