" Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

"EasyMotion colors
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment


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


" iron.nvim python REPL
augroup ironmapping
    autocmd!
    autocmd Filetype python nmap <buffer> <Space> <Plug>(iron-send-motion)
    autocmd Filetype python vmap <buffer> <Space> <Plug>(iron-send-motion)
augroup END


" Vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'mupdf'
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

" deoplete
let g:deoplete#enable_at_startup = 1

