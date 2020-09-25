" ===============================================================
" Editor settings
" ===============================================================
" Settings {{{
set nocompatible        " Use vim, not vi api
set nobackup
set nowritebackup
set noswapfile          " Last 3 lines set no backup/swal files
set ruler               " Alwyas show cursor
set showcmd             " Show incomplete commands
set incsearch           " Search as you type
set hlsearch            " Highlight search matches
set smartcase           " Ignore case in search
set ignorecase
set nowrap              " Turn word wrap off
set expandtab           " Convert tabs to white space
set tabstop=4           " Number of columns occupied by a tab character
set shiftwidth=4        " Width for autoindents
set number              " Add line numbers
" Highlight trailing whitespace
set list listchars=tab:\ \ ,trail:·
" Set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)
set guioptions-=T       " Hide the toolbar
set encoding=utf-8      " UTF encoding
set autoread            " Autoload files that have changed outside of vim
set clipboard+=unnamed  " Use system clipboard
set shortmess+=I        " Don't show intro message
set splitbelow
set splitright          " Last 2 lines are for better splits
set wildmenu            " Visual autocomplete for command menu
set showmatch           " Show matching brackets.
set autoindent          " Indent a new line the same amount as the line just typed
set laststatus=2        " Seeing the airline bar

" Set built-in file system explorer to use layout similar to the NERDTree plugin
let g:netrw_liststyle=3
" Always highlight column 80 so it's easier to see where
" cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=darkred
set colorcolumn=80
" }}}

" Plugins {{{
filetype plugin indent on
execute pathogen#infect()

" Theme
" colorscheme dracula

" Gruvbox theme settings
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_termcolors =256
autocmd vimenter * colorscheme gruvbox
set background=dark

" Airline
let g:airline_powerline_fonts = 1
" }}}

" Mappings {{{
" Mapping jj to <Esc> key
:imap jj <Esc>
" }}}
if (has("termguicolors"))
        set termguicolors
endif

" Commands {{{
" Close all folds when opening a new buffer
autocmd BufRead * setlocal foldmethod=marker
autocmd BufRead * normal zM

