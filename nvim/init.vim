"Pluggins
"Be sure to download ctags
execute pathogen#infect()

"Basic settings for any vimrc"
syntax on
filetype plugin indent on
set number
set showcmd
set wrap
set wildmenu
set showmatch

"let g:solarized_termcolors=16 
"g:solarized_termtrans =   0       
"g:solarized_degrade   =   0       
"g:solarized_bold      =   1       
"g:solarized_underline =   1       
"g:solarized_italic    =   1       
"g:solarized_contrast  =   "normal"
"g:solarized_visibility=   "normal"

colorscheme solarized
"set background=dark

set tabstop=3
set shiftwidth=3

nnoremap <esc> :noh<return><esc>		"Clears the last search highlightin in Vim
nnoremap j gj
nnoremap k gk
