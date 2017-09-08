" Default to Python 3 features.
let g:pymode_python = 'python3'

" Don't mark the textwidth column with a vertical bar.
let g:pymode_options_colorcolumn = 0

" Prefer standalone linting plugin (ALE, Syntastic, etc.).
let g:pymode_lint = 0

" Disable Rope.  Relying on completion plugin to configure it.
let g:pymode_rope = 0

" Use ipdb rather than pdb for breakpoints.  Assumes it's available.
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'
