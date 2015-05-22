set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
highlight Normal ctermfg=grey ctermbg=darkblue
colorscheme solarized
set number
set numberwidth=3
set cpoptions+=n
set backspace=2 " make backspace work like most other programs

"airline theme
let g:airline_theme='powerlineish'
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_section_z = ' '
let mapLeader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

set tabstop=2
set shiftwidth=2
set expandtab

" puts a closing bracket and places cursor in between after enter is pressed
inoremap {<CR> {<CR>}<C-o>O

let g:ctrlp_map =  '<c-p>'
let g:ctrlp_cmd =  'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " the nearest ancestor that contains .git .hg .svn, the current directory
" ignores files or folders for ctrl+P fuzzy search
let g:ctrlp_custom_ignore = {
 \ 'dir': '\v[\/]\.(git|hg|svn)$',
 \ 'file': '\v\.(exe|so|dll)$',
 \ 'link:': 'some_bad_symbolic_links',
 \ }

nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split  
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split  
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move    right a split  
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split 
