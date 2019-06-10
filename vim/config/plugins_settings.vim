"---Plugins---"
" NERDTree
let NERDTreeHijackNetrw = 0

"greplace
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"php-cs-fixer
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
let g:php_cs_fixer_php_path = '/usr/bin/php'
let g:php_cs_fixer_level = "psr2"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_rules = "@PSR2"                " wich rules or ruleset ?
let g:php_cs_fixer_config_file = '.php_cs'        " configuration file
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0

" pdv
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>pdv :call pdv#DocumentWithSnip()<CR>

" Utilsnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" python-mode
let g:pymode_python = 'python3'

" airline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

