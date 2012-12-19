" Minimal .vimrc

" auto reload vimrc when saved
autocmd BufWritePost .vimrc source %

" http://superuser.com/questions/194933/vim-7-3-with-unicode-on-ubuntu
set encoding=utf-8
set t_Co=256
colorscheme koehler
set number

" use soft tabs (spaces)
set tabstop=2
set shiftwidth=2
set expandtab

" turn on search hightlighting
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" use visible fold markers
set foldmethod=marker

call pathogen#infect()
syntax on
filetype plugin indent on

" column width marker
set textwidth=80
set cc=+1
" :set cc=+1,+2,+3
hi ColorColumn ctermbg=red guibg=red

" this allows back space to work as expected when in insert mode
" set backspace=indent,eol,start
" set wrap! "turns of word wrapping

" enables autocomplete
let g:neocomplcache_enable_at_startup = 1

