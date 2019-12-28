" Fix <CR> not moving to next line after completing single exact match while popup menu visible.
" this is incompatible with current deoplete
" inoremap <silent> <expr> <CR> pumvisible() ? deoplete#mappings#close_popup()."\<CR>" : "\<CR>"

" Disable completion previews.
setlocal completeopt-=preview
