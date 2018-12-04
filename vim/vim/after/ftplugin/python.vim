autocmd BufWritePost *.py call Flake8()
autocmd VimEnter * echo "Loaded python settings for vim"
