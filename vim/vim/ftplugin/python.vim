"autocmd BufWritePost *.py call Flake8()
let g:pep8_ignore="E501"
let g:pymode_options_max_line_length=120
let g:pymode_lint_options_pep8 =
    \ {'max_line_length': g:pymode_options_max_line_length}
