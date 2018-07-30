" plugins
call plug#begin('~/.vim/plugged')
    Plug 'fatih/vim-go'
    Plug 'rust-lang/rust.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'tmux-plugins/vim-tmux-focus-events'
call plug#end()

" requires monokai.vim and fonts-powerline
syntax on
colorscheme monokai

" lets airline use powerline fonts for the angles and symbols
" in status bar
if system("hostname") == "blackbox\n"
    let g:airline_powerline_fonts = 1
endif

" enables tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'
if &term =~ '256color'
" disable Background Color Erase (BCE) so that color schemes
 " render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

set laststatus=2

set cursorline

set number
" keep 5 lines buffer when scrolling
set scrolloff=5
set mouse=a
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set incsearch
set hlsearch

" Mac backspace is stupid
set backspace=indent,eol,start

vmap '' :w !pbcopy<cr><cr>


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

augroup auto_reload
    autocmd!
    au FocusGained,BufEnter * :checktime
augroup end

noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" move tabs
nmap <silent> <C-h> :tabp<cr>
nmap <silent> <C-l> :tabn<cr>
nmap <silent> <C-M-h> :-tabm<cr>
nmap <silent> <C-M-l> :+tabm<cr>

" navigating panes in vim
nmap <silent> <C-right> :wincmd l<cr>
nmap <silent> <C-left> :wincmd h<cr>
nmap <silent> <C-up> :wincmd k<cr>
nmap <silent> <C-down> :wincmd j<cr>

" ctrlp settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

