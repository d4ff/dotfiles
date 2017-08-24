call plug#begin('~/.config/nvim/plugged')

Plug 'euclio/vim-markdown-composer'
Plug 'https://github.com/jalvesaq/Nvim-R.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/lifepillar/vim-solarized8.git'
Plug 'https://github.com/KeitaNakamura/neodark.vim.git'
Plug 'http://github.com/Raimondi/delimitMate'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/jeetsukumaran/vim-buffergator.git'
Plug 'https://github.com/lervag/vimtex.git'
Plug 'https://github.com/tmhedberg/SimpylFold.git'
Plug 'https://github.com/vim-scripts/indentpython.vim.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

call plug#end()

source $HOME/.config/nvim/general.vimrc
source $HOME/.config/nvim/plugins.vimrc
source $HOME/.config/nvim/keys.vimrc


