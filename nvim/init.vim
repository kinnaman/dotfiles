" Be sure to download ctags to run
"lua require('plugins')

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Vim colorscheme in solarized
Plug 'https://github.com/altercation/vim-colors-solarized'

" CSS color in source code
Plug 'https://github.com/ap/vim-css-color', { 'for': 'css' }

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Nerd tree
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle' }

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
autocmd! User goyo.vim echom 'Goyo is now loaded!'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" be sure to install coc-pairs alvin/close-tags vim-surround 

" Initialize plugin system
call plug#end()

" Basic settings for any vimrc"
syntax on
filetype on "plugin indent on (previously)
set number
set showcmd
set wrap
set wildmenu
set showmatch

" Solarized settings
set background=dark
colorscheme solarized

set tabstop=4
set shiftwidth=4
" set expandtab

nnoremap <esc> :noh<return><esc>		"Clears the last search highlightin in Vim
nnoremap j gj
nnoremap k gk

" Binding ctrl+s as save. If command does not work in terminal 
" then press qtrl+q as it is likely your xterm is not configured
" to pass ctrl+s to the application.
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>


" File explore behavior
let g:netrw_liststyle = 3
nnoremap <C-e> :Lexplore<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" NERDTree keybindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
