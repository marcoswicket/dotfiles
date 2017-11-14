" Vundle setup begin
" Of course
set nocompatible
"
" Required Vundle setup
filetype on
syntax on
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'flazz/vim-colorschemes'
Plugin 'a.vim'
"Vundle setup end

set ai
set number
set tabstop=4
"set softtabstop=4
"set expandtab
set shiftwidth=4
set smarttab
retab
set bg=dark
filetype on
filetype plugin indent on
filetype plugin on
set colorcolumn=80
nmap q <Leader>ci
nmap <F8> :TagbarToggle<CR> 
nmap <F9> :Dox<CR>
imap <F9> <Esc>:Dox<CR>

nnoremap <C-Down> gT
nnoremap <C-Up> gt

" F2 to alternate between implementation and header files
imap <F2> <Esc>:A<CR>
nmap <F2> :A<CR>

"Shift+F2 to split and open implementation and header at once
nmap O2Q :AS<CR>
imap O2Q <Esc>:AS<CR>
nnoremap ; :

"highligth trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

set pastetoggle=<F3>
set hlsearch
colorscheme jellybeans

let g:Powerline_symbols = "fancy"
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Don't indent labels
set cinoptions+=L0
set cinoptions+=L1

"deactivate youcompleteme while working with ros unconfigured folders
"let g:loaded_youcompleteme = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:SuperTabClosePreviewOnPopupClose = 1
"if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    "set t_ut=
"endif
