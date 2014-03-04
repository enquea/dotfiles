execute pathogen#infect()
syntax on
filetype plugin indent on
set number
color jellybeans

"Clipboard
set clipboard=unnamed

"Tabs and indent
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

"Custom commands
set pastetoggle=<F10>
map <F5> :so $MYVIMRC<CR>
map <C-A> gg"+yG
map <C-C> "+y
map <C-V> i<C-R>*

"GVIM
set guifont=Monospace\ 12
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

