" Use dark solarized color theme.
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Disable underline for folds.
highlight Folded cterm=NONE

" Use same same background for SignColumn as LineNr.
highlight SignColumn ctermfg=10 ctermbg=NONE

" Tone-down trailing character and blank line highlights.
highlight NonText cterm=NONE ctermbg=NONE ctermfg=11
