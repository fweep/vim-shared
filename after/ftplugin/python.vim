" Standard vim indentation.
setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=99

" Stop inserting comment leaders with o/O.
setlocal formatoptions-=o

" Now relying on tmhedberg/SimpylFold for smarter folding.
" setlocal foldmethod=indent foldlevel=20

" Disable completion previews.
setlocal completeopt-=preview

" Disable python-mode's linelength column highlight.
setlocal colorcolumn=""

" Enable cursor line for the currently-focused window, disable for others.
autocmd BufWinEnter,BufEnter,WinEnter       * if &ft ==# 'python' | setlocal cursorline | endif
autocmd BufWinLeave,BufLeave,WinLeave       * if &ft ==# 'python' | setlocal nocursorline | endif
