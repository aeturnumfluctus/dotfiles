Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fq <cmd>lua require('telescope.builtin').quickfix()<cr>
