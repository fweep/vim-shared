let g:airline_theme = 'solarized'

" Use Powerline symbols.
" FIXME: this doesn't work from the after file.  See https://github.com/vim-airline/vim-airline/issues/1565
" let g:airline_powerline_fonts = 1

let g:airline_skip_empty_sections = 1

" Shorter mode names.
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }

" Disable extensions by default.
let g:airline_extensions = []

" Disable fileencoding, fileformat.
let g:airline_section_y = ''

" Disable percentage/line/col numbers.
let g:airline_section_z = ''
