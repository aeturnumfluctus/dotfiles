" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off                      "required


"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------

call plug#begin()

source ~/.config/nvim/plugins/colorizer.vim
source ~/.config/nvim/plugins/ctrlp.vim
source ~/.config/nvim/plugins/editorconfig-vim.vim
source ~/.config/nvim/plugins/tabular.vim
source ~/.config/nvim/plugins/vim-airline-themes.vim
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/vim-bundler.vim
source ~/.config/nvim/plugins/vim-commentary.vim
source ~/.config/nvim/plugins/vim-dispatch.vim
source ~/.config/nvim/plugins/vim-elixir.vim
source ~/.config/nvim/plugins/vim-fugitive.vim
source ~/.config/nvim/plugins/vim-multiple-cursors.vim
source ~/.config/nvim/plugins/vim-repeat.vim
source ~/.config/nvim/plugins/vim-surround.vim
source ~/.config/nvim/plugins/vim-tmux-navigator.vim
source ~/.config/nvim/plugins/vim-windowswap.vim

call plug#end()

syntax on
filetype plugin indent on

"-------------------------------------------------------------------------------
" General Settings
"-------------------------------------------------------------------------------

"http://stackoverflow.com/questions/607435/why-does-vim-save-files-with-a-extension
set number                        " enable line numbers
"set relativenumber                " line numbers relative to cursor position
set numberwidth=5
set nobackup
set nowritebackup
set noswapfile
set scrolloff=4                   " keep at least 4 lines below cursor
set sidescrolloff=5               " keep at least 5 lines to side of cursor
set history=1000                  " keep 1000 lines of command line history
set undolevels=1000               " undo up to 1000 times
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set tabstop=2                     " sets tab lengths to 2 spaces
set shiftwidth=2                  " sets shift with to two spaces (when auto-indenting)
set expandtab                     " expands tab characters into spaces
set ruler		                      " show the cursor position all the time
set showcmd		                    " display incomplete commands
set hlsearch
set incsearch		                  " do incremental searching
set modifiable                    " make buffer(s) modifiable
set textwidth=80
set colorcolumn=+1
set clipboard=unnamed
" set tags=tags                     " set tags

" Airline setup
let g:airline_powerline_fonts=1
let g:airline_theme='sol'
set t_Co=256

" Other Misc. Configs
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

"-------------------------------------------------------------------------------
" Keymaps
"-------------------------------------------------------------------------------

let mapleader = "\<Space>"

"normas mode maps
"sets up shortcut to split to $MYVIMRC
nmap <leader>ve :sp $MYVIMRC<cr>
"sets up shortcut to source $MYVIMRC
nmap <leader>so :source $MYVIMRC<cr>

" allow gf to open non-existent files
map gf :edit <cfile><cr>

" vim-tmux-runner
"open a new tmux pane and start zeus
" nnoremap <leader>zst :VtrOpenRunner {'orientation': 'v', 'percentage': 20, 'cmd': 'zeus start'}<cr>
"open a new tmux pane and start irb
" nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>

" vim-taskwarrior
" TODO: map <leader>tw :call <CR>

" ctrlp
" let g:ctrlp_custom_ignore = 'node_modules\|deps'

"format paragraph
map Q gq

"insert mode maps
"jj to escape insert mode :)
imap jj <esc>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" move selected text in visual mode
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
