" Fix <CR> not moving to next line after completing single exact match while popup menu visible.
inoremap <silent> <expr> <CR> pumvisible() ? deoplete#mappings#close_popup()."\<CR>" : "\<CR>"
