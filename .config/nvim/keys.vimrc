" Map the leader key to ,
let mapleader="\,"

" Easier dollar
map ¤ $
imap ¤ $

" Select all with ,a
nmap <Leader>a gg0vG$<CR>

" Remap O and o to stay in normal mode
nmap o o<Esc>
nmap O O<Esc>

" Leader bidings
noremap <leader>ev :tabnew $MYVIMRC<cr>
noremap <leader>cs :tabnew ~/Documents/cheatsheet<cr>
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

" Fzf hotkeys
nnoremap <leader>v :FzfFiles<cr>
nnoremap <leader>u :FzfTags<cr>
nnoremap <leader>j :call fzf#vim#tags("'".expand('<cword>'))<cr>
