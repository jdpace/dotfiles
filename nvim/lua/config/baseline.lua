-- mapleader
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Prefer soft tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- More natural split direction
vim.cmd("set splitbelow")
vim.cmd("set splitright")

-- Line numbers by default.
vim.cmd("set number")
vim.cmd("set numberwidth=3")

-- assume the /g flag on :s substitutions to replace all matches in a line:
vim.cmd("set gdefault")

-- Show hidden characters
vim.cmd("set list")
