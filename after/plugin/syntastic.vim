" Always populate the location list when there are errors.
let g:syntastic_always_populate_loc_list = 1

" Automatically open/close location list window depending on presence of errors.
" Disabled because it won't ever go away if there are errors.
" let g:syntastic_auto_loc_list = 1

" Python settings.
" E501: line too long
" E123: closing bracket does not match indentation of opening bracket's line
let g:syntastic_python_checkers = ["pylint", "pep8"]
let g:syntastic_python_pylint_args = "--rcfile=.pylintrc"
let g:syntastic_python_pep8_args = "--ignore=E501,E123"

" let g:syntastic_python_checkers = ["flake8"]
" E711: comparison to None should be 'if condition is None:'
" E712: comparison to True should be 'if condition is True:'
" E241: multiple spaces after ','
" let g:syntastic_python_flake8_args = "--max-line-length=99 --ignore=E711,E712,E241"

" Ruby settings.
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
