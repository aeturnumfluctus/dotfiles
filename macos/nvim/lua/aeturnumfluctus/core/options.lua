------------------------------------------------------------
-- Options
------------------------------------------------------------

local opt = vim.opt
local indent = 2

-- Interface
opt.cursorline = true
opt.laststatus = 3
opt.number = true
opt.scrolloff = 4
opt.sidescrolloff = 4
opt.signcolumn = "yes"
-- opt.splitright = true
-- opt.splitbelow = true
opt.termguicolors = true
-- opt.showmode = false
opt.textwidth = 80
-- opt.colorcolumn = +1

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = indent
opt.softtabstop = indent
opt.tabstop = indent

-- Search
-- opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

-- Completion
opt.completeopt = {"menu", "noselect"}
opt.pumheight = 10

-- Behavior
opt.clipboard:append("unnamedplus")

-- opt.hidden = true
opt.undofile = true
opt.updatetime = 1000
-- opt.noswapfile = true

