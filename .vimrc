call pathogen#infect()
filetype plugin indent on
syntax on
set number
set hlsearch
set directory=~/.vim/swap,.
color jellybeans

"Django html syntax highlight
"autocmd FileType html set ft=htmldjango

"Copy/paste
set clipboard=unnamed
set pastetoggle=<F10>
map <C-A> gg"+yG
map <C-C> "+y

"Tabs and indent
set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
"Change 4 indent to 2 indent
map <F3> :%s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g<CR>

"Other commands
imap <F2> import pdb; pdb.set_trace()
map <F5> :so $MYVIMRC<CR>
" wrap <b> around visual selected text 
vmap <C-B> :s/\%V\(.*\)\%V/<b>\1<\/b>/g<CR>:noh<CR>


"GVIM
set guifont=Monospace\ 16
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

"HTML tags
syn keyword htmlTagName contained tabset tab

"Ctrl P ignore files/dirs
let g:ctrlp_custom_ignore = '\v(\.pyc|__init__.py)$'
"use silver searcher for finding files
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
