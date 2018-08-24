set nocompatible               " be iMproved
filetype off                   " required!
set fenc=utf-8			"文字コード
set nobackup			"バックアップファイル作成しない
set noswapfile			"スワップファイル作成しない
set autoread			"ファイル編集自動読み込み
set hidden
set showcmd
set cursorline
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
set list listchars=tab:\▸\-
set tabstop=2

"vim-plug
nnoremap <silent><C-e> :NERDTreeToggle<CR>
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'edkolev/promptline.vim'
Plug '/usr/local/opt/fzf'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }
" Vundle/NeoBundle と同じように
Plug 'junegunn/seoul256.vim'
" 指定したファイルタイプを開いたときに読み込む
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
call plug#end()

function! s:fzf_statusline()
				 "  Override statusline as you like
					   highlight fzf1 ctermfg=161 ctermbg=251
					     highlight fzf2 ctermfg=23 ctermbg=251
					       highlight fzf3 ctermfg=237 ctermbg=251
					         setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
					         endfunction
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"行数カウント
set number
:command! Nu set relativenumber
:command! NU set relativenumber!
"コード色つけ"
:syntax on

" 矢印キーを無効にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
