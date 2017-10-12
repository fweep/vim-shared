" Enable cursor line for the currently-focused window, disable for others.
autocmd BufWinEnter,BufEnter,WinEnter       * if &ft ==# 'cucumber' | setlocal cursorline | endif
autocmd BufWinLeave,BufLeave,WinLeave       * if &ft ==# 'cucumber' | setlocal nocursorline | endif
