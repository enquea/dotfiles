call pathogen#infect()
filetype indent on
syntax on
set number
set hlsearch
set directory=~/.vim/swap,.
set autochdir
color jellybeans

"Copy/paste
set clipboard=unnamed
set pastetoggle=<F10>
map <C-A> gg"+yG
map <C-C> "+y

"Tabs and indent
set expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

"Change 4 indent to 2 indent
map <F3> :%s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g<CR>

"Folding by indent
set foldmethod=indent
set foldlevelstart=20

"Other commands
imap <F2> import pdb; pdb.set_trace()
map <F5> :so $MYVIMRC<CR>
" wrap <b> around visual selected text 
vmap <C-B> :s/\%V\(.*\)\%V/<b>\1<\/b>/g<CR>:noh<CR>
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

"GVIM
set guifont=Monospace\ 16
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
hi! DiffAdd      guibg=#003300
hi! DiffChange   guibg=#003300
hi! DiffDelete   guifg=#330000 guibg=#330000
hi! DiffText     guibg=#990000  

"HTML tags
syn keyword htmlTagName contained tabset tab

"Ctrl P ignore files/dirs
let g:ctrlp_custom_ignore = '\v(\.pyc|__init__.py)$'
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

