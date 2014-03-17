call pathogen#infect()
filetype plugin indent on
syntax on
set number
color jellybeans

"Django html syntax highlight
autocmd FileType html set ft=htmldjango

"Clipboard
set clipboard=unnamed

"Tabs and indent
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

"Custom commands
set pastetoggle=<F10>
map <F5> :so $MYVIMRC<CR>
map <C-A> gg"+yG
map <C-C> "+y

"GVIM
set guifont=Monospace\ 12
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

