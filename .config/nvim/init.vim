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

set encoding=utf-8

" Colorscheme settings
syntax enable
set t_Co=256
if (has("termguicolors"))
 set termguicolors
endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark

colorscheme solarized8_dark
"colorscheme neodark
"let g:neodark#background = '#002B36'
"let g:neodark#use_256color = 1 " default: 0
"let g:neodark#solid_vertsplit = 1 " default: 0
"let g:neodark#use_custom_terminal_theme = 1 " default: 0

"let g:airlinetheme='oceanicnext'

"" Map the leader key to ,
let mapleader="\,"

" Foreign keyboard remaps
map ¤ $
imap ¤ $

" Enable folding (za)
set foldmethod=indent
set foldlevel=99

" Leader bidings
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>cs :vsplit ~/.config/nvim/nvimCheatsheet<cr>
nnoremap <Leader>o :CtrlP<CR>		" Open file menu
nnoremap <Leader>O :CtrlPBuffer<CR>	" Open buffer menu
noremap <leader>n :nohlsearch<CR>

"Enter creates new line in normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>



" Settings tips from http://nerditya.com/code/guide-to-neovim/
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Open NERDtree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>


" Navigate splits with alt + arrows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
augroup vimrc
    au!
   " au VimEnter * unmap <C-j>
    au VimEnter * noremap <C-j> <C-w>j
augroup END

" nvim-R
autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif  " Auto-quit when exiting nvim

" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
   inoremap <C-Space> <C-x><C-o>
else
   inoremap <Nul> <C-x><C-o>
endif

" Disable _ = <-
let R_assign = 0

" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" Vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'mupdf'
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>

" Maps Alt-[n,p] for moving next and previous window respectively
map <silent> <A-n> <C-w><C-w>
map <silent> <A-p> <C-w><S-w>



" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Python flag unneccessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" YouCompleteMe options
" Autoclose window
"let g:ycm_autoclose_preview_window_after_completion=1
" Goto definition with leader+g
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

