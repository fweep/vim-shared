" Standard vim indentation.
setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=99

" Stop inserting comment leaders with o/O.
setlocal formatoptions-=o

" Start with folds open.
setlocal foldlevel=99

" Enable cursor line for the currently-focused window, disable for others.
autocmd BufWinEnter,BufEnter,WinEnter       * if &ft ==# 'java' | setlocal cursorline | endif
autocmd BufWinLeave,BufLeave,WinLeave       * if &ft ==# 'java' | setlocal nocursorline | endif
