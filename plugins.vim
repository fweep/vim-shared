" Configure plugins using junegunn/vim-plug.
let plugged_directory = fnamemodify(expand('$MYVIMRC'), ':p:h') . '/plugged'
call plug#begin(plugged_directory)

" General-purpose plugins.

" Colorscheme.
Plug 'altercation/vim-colors-solarized'

" See GitHub for details of tpope plugins.
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-projectionist'

" See GitHub for details of AndrewRadev plugins.
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'

" Ack search results in quickfix window.
Plug 'mileszs/ack.vim'

" Automatically insert closing brackets and other paired elements.
" Disabled because it annoyed me when inserting next to non-whitespace characters.
" Plug 'jiangmiao/auto-pairs'

" Fuzzy file finder.
Plug 'kien/ctrlp.vim'

" Undo tree manipulator.
Plug 'sjl/gundo.vim'

" Mark syntax/linter errors and populate location list.
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

" Format regions as tables.
Plug 'godlygeek/tabular'

" bufkill doesn't get along with netrw; disabling pending bugfix https://github.com/qpkorr/vim-bufkill/issues/11
" Plug 'qpkorr/vim-bufkill'

Plug 'majutsushi/tagbar'

" My plugins (if you're not me, get rid of these g:plug_url_format lines to use https GitHub URLs).
" let g:plug_url_format = 'git@github.com:%s.git'

" Powerline-style tabs and other tab labeling functionality.
Plug 'fweep/vim-tabber'

" Bind cscope search commands and list results in quickfix window.
" Plug 'fweep/vim-cscope'
" unlet g:plug_url_format

" Buffer list in a tray-style window.
Plug 'jeetsukumaran/vim-buffergator'
let g:buffergator_suppress_keymaps = 1

" Lighter-weight Powerline-style statusline.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Configure airline (some of these won't work in an after file).
let g:airline_powerline_fonts = 1

if has('nvim')
  " Asynchronous autocompletion.
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " let g:deoplete#enable_at_startup = 1

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

  " inoremap <silent><expr> <TAB>
  "     \ pumvisible() ? coc#_select_confirm() :
  "     \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  "     \ <SID>check_back_space() ? "\<TAB>" :
  "     \ coc#refresh()

  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  inoremap <silent><expr> <c-space> coc#refresh()
  imap <C-l> <Plug>(coc-snippets-expand)
  vmap <C-j> <Plug>(coc-snippets-select)
  imap <C-j> <Plug>(coc-snippets-expand-jump)

  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocActionAsync('doHover')
    endif
  endfunction

  " Context-sensitive Python completion.
"  Plug 'zchee/deoplete-jedi'

  " Most Recently Used files.
"  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  " Semi-asynchronous autocompletion (launches a server and communicates synchronously).
  " Plug 'Valloric/YouCompleteMe'
  Plug 'Shougo/neocomplete.vim'

  " Most Recently Used files.
  Plug 'Shougo/denite.nvim'
end

" Ruby/Rails plugins
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-bundler'
" Plug 'thoughtbot/vim-rspec'
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'

" Python plugins
" Plug 'python-mode/python-mode'

" Improved Python folding.
Plug 'tmhedberg/SimpylFold'

" Rope code refactoring for Python.
" Plug 'python-rope/ropevim'

" HTML/Javascript plugins
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'

" Elixir plugins
" Plug 'elixir-lang/vim-elixir'

if !has('nvim')
  " Neovim supports bracketed paste out of the box.
  Plug 'ConradIrwin/vim-bracketed-paste'
end

" Only recompute folds on save and during some folding operations (greatly speeds up insert mode).
Plug 'Konfekt/FastFold'

" Do HTTP requests from inside Vim.
Plug 'aquach/vim-http-client'

" nginx syntax highlighting.
Plug 'fatih/vim-nginx'

" Sublime-like multiple cursors.
" Plug 'terryma/vim-multiple-cursors'

" Syntax highlighting for tmux.conf (not updated to 2.3+).
" Plug 'tmux-plugins/vim-tmux'

" TypeScript syntax highlighting.
" Plug 'leafgarland/typescript-vim'

" Sublime-style code search.
" Plug 'dyng/ctrlsf.vim'

" Go.
Plug 'fatih/vim-go'

Plug 'hashivim/vim-terraform'

" editorconfig support.
Plug 'editorconfig/editorconfig-vim'

" Java
" Plug 'vim-jp/vim-java'

call plug#end()
