call plug#begin()

Plug 'tpope/vim-fugitive'                                       " git
Plug 'tpope/vim-surround'                                       " surround
Plug 'scrooloose/nerdtree'                                      " tree
Plug 'scrooloose/syntastic'                                     " linting
Plug 'scrooloose/nerdcommenter'                                 " auto comments
Plug 'ctrlpvim/ctrlp.vim'                                       " ctrl p
Plug 'skwp/greplace.vim'                                        " grep
Plug 'ervandew/supertab'                                        " tab cut completion
Plug 'MarcWeber/vim-addon-mw-utils'                             " interpret a file by function and cache file automatically
Plug 'tomtom/tlib_vim'                                          " multiple utilities functions
Plug 'honza/vim-snippets'
Plug 'tobyS/vmustache'                                          " template engine
Plug 'jiangmiao/auto-pairs'                                     " auto-pairs
Plug 'Shougo/vimshell.vim'                                      " shell support
Plug 'bling/vim-airline'                                        " airline bar
Plug 'vim-airline/vim-airline-themes'                           " airline themes
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }              " vim-go
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }   " youcompleteme
Plug 'rust-lang/rust.vim'                                       " rust
Plug 'mattn/webapi-vim'                                         " webapi

call plug#end()
