"Pluggins
execute pathogen#infect()

"Basic settings for any vimrc"
syntax enable
filetype plugin indent on
set number
set showcmd
set wrap
set wildmenu
set showmatch
set background=dark
colorscheme solarized

set tabstop=3
set shiftwidth=3

nnoremap <esc> :noh<return><esc>		"Clears the last search highlightin in Vim
