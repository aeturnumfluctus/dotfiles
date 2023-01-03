------------------------------------------------------------
-- Options
------------------------------------------------------------

local indent = 2

-- Interface
vim.opt.cursorline = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = "yes"
-- vim.opt.splitright = true
-- vim.opt.splitbelow = true
vim.opt.termguicolors = true
-- vim.opt.showmode = false

-- Indentation
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = indent
vim.opt.softtabstop = indent
vim.opt.tabstop = indent

-- Search
-- vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

-- Completion
vim.opt.completeopt = {"menu", "noselect"}
vim.opt.pumheight = 10

-- Behavior
vim.opt.clipboard = "unnamedplus"
-- vim.opt.hidden = true
vim.opt.undofile = true
vim.opt.updatetime = 1000

