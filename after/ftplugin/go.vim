" Use real tabs with Go.
setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4 textwidth=99

" Disable highlighting of tabs.
setlocal list listchars=tab:›\ ,trail:·,nbsp:·,extends:>

" Stop inserting comment leaders with o/O.
setlocal formatoptions-=o

" Start with folds open.
setlocal foldmethod=syntax foldlevel=99

" Enable cursor line for the currently-focused window, disable for others.
autocmd BufWinEnter,BufEnter,WinEnter * if &ft ==# 'go' | setlocal cursorline | endif
autocmd BufWinLeave,BufLeave,WinLeave * if &ft ==# 'go' | setlocal nocursorline | endif

" Use vim-go's OmniComplete
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
