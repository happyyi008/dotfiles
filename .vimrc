" plugins
 call plug#begin('~/.vim/plugged')
 Plug 'fatih/vim-go'
 Plug 'rust-lang/rust.vim'
 call plug#end()

" ignore vim version warning from vim-go
let g:go_version_warning = 0

"requires monokai.vim and powerline-status
syntax on
colorscheme monokai

set number
set mouse=a
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set incsearch
set hlsearch

" Mac backspace is stupid
set backspace=indent,eol,start

" set environment specific configs
let env=system("uname")
if env!="Darwin\n"
    python from powerline.vim import setup as powerline_setup
    python powerline_setup()
    python del powerline_setup
endif

set laststatus=2

nnoremap <space> i<space><esc>

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,rust,go let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" tabs
nnoremap <C-left> :tabp<CR>
nnoremap <C-right> :tabn<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <C-w> :q<cr>
map <C-o> :tabe 

