"automatically source the vimrc file on save"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
