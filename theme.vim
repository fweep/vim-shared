" Use dark solarized color theme.
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Disable underline for folds.
highlight Folded cterm=NONE

" Use same same background for SignColumn as LineNr.
highlight SignColumn ctermbg=0 ctermfg=10

" Use a pipe-like vertical divider (same as tmux) and the default background color.
set fillchars=vert:│
highlight VertSplit ctermfg=11 ctermbg=NONE
