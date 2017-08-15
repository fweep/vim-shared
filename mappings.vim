" Change leader from default \.
let mapleader = ','

" Toggle search highlighting off more easily.
nnoremap <silent> <space> :nohlsearch<CR>

" Make Y behave like C and D.
nnoremap Y y$

" Make X like D into a black hole.
nnoremap X "_D

" Map jk to <Esc> in insert mode.
inoremap jk <Esc>

" Disable <F1> help because I always fat-finger <Esc> on tiny keyboards.
nnoremap <F1> <Nop>

" <F2> toggles paste mode in normal/insert modes.
nnoremap <silent> <F2> :set paste!<CR>
set pastetoggle=<F2>

" Disable paste mode when leaving insert mode.
autocmd InsertLeave * set nopaste

" Visually select entire buffer.
nnoremap <Leader>a ggVG

" Faster window switching
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Map <Leader>l to redraw since <C-l> mapping was changed.
nnoremap <silent> <Leader>l :redraw!<CR>

" Make . on a visual selection sensible.
vnoremap . :normal .<CR>

" Swap behavior of ' and ` for easier typing.
nnoremap ' `
nnoremap ` '

" Open help in a vertical split.
cnoreabbrev <expr> vhelp getcmdtype() == ':' && getcmdline() == 'vhelp' ? 'vert bo h' : 'vhelp'
cnoreabbrev <expr> vh getcmdtype() == ':' && getcmdline() == 'vh' ? 'vert bo h' : 'vh'

" Default to "very magic" mode for searching.
nnoremap / /\v
vnoremap / /\v

" Use C-a to move to beginning of ex command line.
cnoremap <C-a> <Home>

" Make <Home> alternately jump between column 0 and the first non-whitespace column.
" FIXME: make this a plugin
nnoremap <silent> <Home> :call Home()<CR>
inoremap <silent> <Home> <C-O>:call Home()<CR>

if !exists("*Home")
  function Home()
    let curcol = wincol()
    normal ^
    let newcol = wincol()
    if newcol == curcol
      normal 0
    endif
  endfunction
endif

" Delete trailing whitespace from all lines in current buffer.
" FIXME: make this a plugin
nnoremap <silent> <Leader>w :call DeleteTrailingWhitespace()<CR>

function! DeleteTrailingWhitespace()
    let line = line(".")
    let col = col(".")
    %s/\s\+$//e
    call cursor(line, col)
endfunction

" FIXME: make this a plugin
function! DeleteHiddenBuffers()
    " http://stackoverflow.com/a/8459043/719547
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

" Copy current file relative path to unnamed clipboard.
nnoremap <silent> <Leader>y :let @* = expand('%')<CR>

" Delete trailing whitespace from every line in current buffer.
" FIXME: make this a plugin
nnoremap <silent> <Leader>w :call DeleteTrailingWhitespace()<CR>

function! DeleteTrailingWhitespace()
    let line = line(".")
    let col = col(".")
    %s/\s\+$//e
    call cursor(line, col)
endfunction

" Delete all hidden buffers.  Intentionally not bound to a key.
" FIXME: make this a plugin
function! DeleteHiddenBuffers()
    " http://stackoverflow.com/a/8459043/719547
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

" FIXME: move this stuff to shared or after dirs
autocmd BufRead,BufNewFile .tmux-osx.conf setfiletype tmux
autocmd BufRead,BufNewFile README.md setlocal wrap textwidth=72 formatoptions-=lc formatoptions+=t

" Populate quickfix window with FIXME/TODO.
command! Fixme Ack 'fixme|todo'
