let mapleader = "\<Space>"

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off                      "required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'elixir-lang/vim-elixir'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'christoomey/vim-tmux-runner'
"Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'godlygeek/tabular'
call vundle#end()

syntax on
filetype plugin indent on

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

"normas mode maps
"sets up shortcut to split to $MYVIMRC
nmap <leader>vr :sp $MYVIMRC<cr>
"sets up shortcut to source ~/.vimrc
nmap <leader>so :source $MYVIMRC<cr>

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

" Other Misc. Configs
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

