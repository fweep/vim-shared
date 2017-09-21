" Use dark solarized color theme.
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Disable underline for folds.
highlight Folded cterm=NONE

" Use default background color for sign column.
highlight SignColumn ctermfg=10 ctermbg=NONE

" Tone-down trailing character and blank line highlights.
highlight NonText cterm=NONE ctermbg=NONE ctermfg=11

" Use thin vertical divider (like tmux).
set fillchars+=vert:│

" Set vertical divider background to default.
highlight VertSplit ctermfg=10 ctermbg=NONE

" Use italics for comments.
highlight Comment cterm=italic
