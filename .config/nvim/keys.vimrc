" Map the leader key to ,
let mapleader="\,"

" Easier dollar
map ¤ $
imap ¤ $

" Leader bidings
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>cs :vsplit ~/.config/nvim/nvimCheatsheet<cr>
nnoremap <Leader>o :CtrlP<CR>		" Open file menu
nnoremap <Leader>O :CtrlPBuffer<CR>	" Open buffer menu
noremap <leader>n :nohlsearch<CR>

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Search and Replace - selection
nmap <Leader>r :%s/\%V/g<Left><Left>

" Open NERDtree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Navigate splits 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Exit neovim terminal with Esc
tnoremap <Esc> <C-\><C-n>
