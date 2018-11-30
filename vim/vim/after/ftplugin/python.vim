set foldmethod=indent

" Disable syntastic
let g:syntastic_python_checkers = []
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "passive_filetypes": ["py"]}

let g:syntastic_disabled_filetypes=['py']
let g:syntastic_python_flake8_args='--ignore=E501,E265,E266'

" PyFlake settings
let g:PyFlakeRangeCommand = 'T'
let g:PyFlakeDisabledMessages = 'E265,E266,E501'
let g:PyFlakeDefaultComplexity = 10

autocmd BufWritePost *.py call Flake8()
autocmd VimEnter * echo "Loaded python settings for vim"
