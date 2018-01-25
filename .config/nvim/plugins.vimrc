" Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

"EasyMotion colors
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment

" nvim-R
autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif  " Auto-quit when exiting nvim

let R_assign = 0  " Disable _ = <-
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

" CtrlP
let g:ctrlp_working_path_mode = 'c'  " default dir = current file

" grammarous
let g:grammarous#use_vim_spelllang = 1

" Markdown composer
let g:markdown_composer_external_renderer='pandoc -f markdown -t html'  " Pandoc mode
let g:markdown_composer_autostart = 0

" fzf - use Ripgrep, use when tags available
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --no-messages "" .'
endif

let g:fzf_command_prefix = 'Fzf'

" vim-scala:
let g:scala_use_builtin_tagbar_defs = 0 " Using ~/.ctags instead of default
let g:scala_scaladoc_indent = 1  " Scaladoc indent style

