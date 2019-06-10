filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'                               " git
Plugin 'tpope/vim-surround'                               " surround
Plugin 'scrooloose/nerdtree'                              " tree
Plugin 'scrooloose/syntastic'                             " linting
Plugin 'scrooloose/nerdcommenter'                         " auto comments
Plugin 'ctrlpvim/ctrlp.vim'                               " ctrl p
Plugin 'skwp/greplace.vim'                                " grep
Plugin 'ervandew/supertab'                                " tab cut completion
Plugin 'MarcWeber/vim-addon-mw-utils'                     " interpret a file by function and cache file automatically
Plugin 'tomtom/tlib_vim'                                  " multiple utilities functions
Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
Plugin 'tobyS/vmustache'                                  " template engine
"Plugin 'python-mode/python-mode'
Plugin 'jiangmiao/auto-pairs'                             " auto-pairs
Plugin 'Shougo/vimshell.vim'                              " shell support
Plugin 'bling/vim-airline'                                " airline bar
Plugin 'vim-airline/vim-airline-themes'                   " airline themes

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

