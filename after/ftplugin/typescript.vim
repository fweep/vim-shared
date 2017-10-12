autocmd BufWinEnter,BufEnter,WinEnter       * if &ft ==# 'typescript' | setlocal cursorline | endif
autocmd BufWinLeave,BufLeave,WinLeave       * if &ft ==# 'typescript' | setlocal nocursorline | endif
