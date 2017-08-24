" Encode all files in UTF-8 by default.
set encoding=utf-8

" Honor modeline settings in files.
set modeline modelines=5

" Disable automatic comment leader insertion, except on textwidth wrap.
set formatoptions-=ro

" Keep files open even if there's no active window into them.
set hidden

" Save 10000 lines of history.
set history=10000

" Yank to system clipboard.
if has("unix") && !has("osx")
  set clipboard=unnamedplus
else
  set clipboard=unnamed
end

" Replace tabs with the appropriate number of spaces in insert mode.
set expandtab

" Tabs are 2 spaces.
set tabstop=2

" Backspace deletes to previous tabstop.
set softtabstop=2

" Shift lines left/right by 2 spaces with <<, >>, indent with ==.
set shiftwidth=2

" Allow backspace over everything in insert mode.
set backspace=indent,eol,start

" No line wrapping.
set nowrap

" Scroll window sideways by 1 character at a time.
set sidescroll=1

" Keep cursor 20 characters from edge of window when scrolling horizontally.
set sidescrolloff=20

" Keep cursor 8 lines from top/bottom of window when scrolling vertically.
set scrolloff=8

" Don't create backup files.
set nobackup
set nowritebackup

" Save undo history between Vim invocations.
set undofile

" Prepend .git/tags to tag file search path.
set tags^=.git/tags

" Set window title.
set title

" Always show statusline.
set laststatus=2

" Always show tabline.
set showtabline=2

" Allow up to 50 tabs.
set tabpagemax=50

" Reload externally-changed files when there are no changes in Vim.
set autoread

" Allow the cursor to move beyond EOL in visual mode block selections.
set virtualedit=block

" Show line numbers, width 4 in the column by default.
set number
set numberwidth=4

" Disable error bells when error messages are printed.
set noerrorbells

" Disable visual flash on error bells.
set visualbell t_vb=

" Reduce the number of hit-enter prompts from status messages.
set shortmess=aTIF

" Flash to matching paren/bracket/brace when matching pair is typed.
set showmatch

" Instantly flash back to current character after showing match.
set matchtime=0

" For multi-character mappings and keycodes, wait 500ms and 50ms respectively
" for the next key press before timing out and running the command.
set timeout timeoutlen=500 ttimeoutlen=50

" Highlight matching patterns when searching.
set hlsearch

" Move to matches as a search is performed.
set incsearch

" Case-insensitive searching when the pattern contains only lowercase.
set ignorecase

" Override ignorecase when the pattern contains uppercase characters.
set smartcase

" :substitute is global by default (append /g to patterns toggle off).
set gdefault

" Display tokens for leading/trailing whitespace, literals tabs and nbsp.
set list listchars=tab:>·,trail:·,nbsp:·,extends:>

" Allow <BS>, <Space>, <Left>, <Right> to line-wrap in normal mode.
set whichwrap=b,s,<,>

" Enable filename completion on <Tab> in command-line.
set wildmenu

" First <Tab> completes longest common match, second <Tab> opens wildmenu.
set wildmode=list:longest,list:full

" Ignore files matching these patterns when completing.
set wildignore+=*/.git
set wildignore+=*/*.swp
set wildignore+=*/tmp/*

" Ignore some sources for faster autocompletion of tags.
" Current file, other open windows/buffers, included files, tags.
set complete=.,w,b,i,t

" Don't save open help windows in session.
set sessionoptions-=help

" Enable mouse in all modes.
set mouse=a

" Hide the mouse while typing (default; just being explicit here).
set mousehide

" Don't redraw while executing macros.
set lazyredraw

" Expand the default preview window size (used by Fugitive for Gstatus, etc).
set previewheight=20

" Make ~ for case-swapping require a motion by default.
set tildeop

" Enable mouse in all modes.
set mouse=a

" Hide the mouse while typing (default; just being explicit here).
set mousehide

" Don't redraw while executing macros.
set lazyredraw

" Expand the default preview window size (used by Fugitive for Gstatus, etc).
set previewheight=20

" Make ~ for case-swapping require a motion by default.
set tildeop
