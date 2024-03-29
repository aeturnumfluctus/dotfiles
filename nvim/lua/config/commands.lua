------------------------------------------------------------
-- Commands & Autocommands
------------------------------------------------------------

local augroup, autocmd = vim.api.nvim_create_augroup, vim.api.nvim_create_autocmd

autocmd({"TextYankPost"}, {
  group = augroup("highlight-yank", {}),
  pattern = "*",
  callback = function ()
    vim.highlight.on_yank()
  end,
})
