" NERDTree
let NERDTreeHijackNetrw = 0

" CtrlP
let g:ctrlp_extensions = ['buffertag']		"Allow CtrlP ext to perform buftag

" greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" YCM
set completeopt-=preview

" airline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" rustfmt autosave
let g:rustfmt_autosave = 1
