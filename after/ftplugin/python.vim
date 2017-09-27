" Standard vim indentation.
setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=99

" Stop inserting comment leaders with o/O.
setlocal formatoptions-=o

" Start with folds open.
setlocal foldlevel=99

" Now relying on tmhedberg/SimpylFold for smarter folding.
" setlocal foldmethod=indent

" Disable completion previews.
setlocal completeopt-=preview

" Disable python-mode's linelength column highlight.
setlocal colorcolumn=""

" Enable cursor line for the currently-focused window, disable for others.
autocmd BufWinEnter,BufEnter,WinEnter       * if &ft ==# 'python' | setlocal cursorline | endif
autocmd BufWinLeave,BufLeave,WinLeave       * if &ft ==# 'python' | setlocal nocursorline | endif

" Open test file from parallel tests directory.  This is fairly project-specific but I can't find a better place for it.
command! AV call <SID>SplitOpenPythonTest('%')

if !exists('*s:SplitOpenPythonTest')
    function! s:SplitOpenPythonTest(path)
    let components = split(expand(a:path), '/')
    call insert(components, 'tests', 1)
    let components[-1] = 'test_' . components[-1]
    let test_path = join(components, '/')
    execute 'vsplit ' . test_path
    endfunction
endif
