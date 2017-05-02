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

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2
