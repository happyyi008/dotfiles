" plugins
 call plug#begin('~/.vim/plugged')
 Plug 'fatih/vim-go'
 Plug 'rust-lang/rust.vim'
 Plug 'vim-airline/vim-airline'
 call plug#end()

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

if &term =~ '256color'
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

set laststatus=2

nnoremap <space> i<space><esc>

" Commenting blocks of code.
augroup comment_leaders
    autocmd!
    autocmd FileType c,cpp,java,scala,rust,go let b:comment_leader = '// '
    autocmd FileType sh,ruby,python   let b:comment_leader = '# '
    autocmd FileType conf,fstab       let b:comment_leader = '# '
    autocmd FileType tex              let b:comment_leader = '% '
    autocmd FileType mail             let b:comment_leader = '> '
    autocmd FileType vim              let b:comment_leader = '" '
augroup end

noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" tabs
nnoremap <C-left> :tabp<CR>
nnoremap <C-right> :tabn<CR>

nmap <silent> <C-right> :wincmd l<cr>
nmap <silent> <C-left> :wincmd h<cr>
nmap <silent> <C-up> :wincmd k<cr>
nmap <silent> <C-down> :wincmd j<cr>

" ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 1

