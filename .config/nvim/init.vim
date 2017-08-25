call plug#begin('~/.config/nvim/plugged')

" Preview .md as you type
Plug 'euclio/vim-markdown-composer'

" R IDE
Plug 'https://github.com/jalvesaq/Nvim-R.git'

" Nerdtree file navigation
Plug 'https://github.com/scrooloose/nerdtree.git'

" Solarized 8 colorscheme
Plug 'https://github.com/lifepillar/vim-solarized8.git'

" Auto-close brackets {([
Plug 'https://github.com/Raimondi/delimitMate'

" Fuzzy file finder
Plug 'https://github.com/kien/ctrlp.vim.git'

" Buffer overview
Plug 'https://github.com/jeetsukumaran/vim-buffergator.git'

" LaTeX integration
Plug 'https://github.com/lervag/vimtex.git'

" Status line enhancement
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" <Leader><Leader><w> navigation
Plug 'https://github.com/easymotion/vim-easymotion.git'

" Automatic whitespace elimination
Plug 'https://github.com/thirtythreeforty/lessspace.vim.git'

" Insert mode completions with TAB
Plug 'https://github.com/ervandew/supertab.git'

" Auto-completion in python
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Better csv
Plug 'chrisbra/csv.vim', {'for': 'csv'}

" REPL's
Plug 'hkupty/iron.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

source $HOME/.config/nvim/general.vimrc
source $HOME/.config/nvim/plugins.vimrc
source $HOME/.config/nvim/keys.vimrc

