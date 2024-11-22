-- set up package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
  vim.fn.system({ "git", "-C", lazypath, "checkout", "tags/stable" }) -- latest stable release
end
vim.opt.rtp:prepend(lazypath)

-- Source buffer after writing 
-- autocmd BufWritePost <buffer> :source

-- require core config
require("config.abbrevs")
require("config.commands")
require("config.keymaps")
require("config.options")

-- load plugin manager
require("lazy").setup("config.plugins", {
  checker = { enabled = false },
  change_detection = { notify = false },
  install = {
    colorscheme = { "tokyonight-moon" }
  },
})
