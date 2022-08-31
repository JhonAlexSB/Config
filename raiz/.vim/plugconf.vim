"  -----------------------------------
"  Config Plugins
"  >>>>>>   
"  -----------------------------------

" ------------
" ( Configuracion ) { Easymotion }
" >>>>>>
" https:/github.com/easymotion/vim-easymotion
" ------------

nmap <Leader>s <Plug>(easymotion-s2)
"nmap <Leader>t <Plug>(easymotion-t2)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" ------------
" ( Configuracion ) { GitGutter }
" >>>>>>
" https:/github.com/airblade/vim-gitgutter
" ------------

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" Funciona como un git add
nmap ghs <Plug>(GitGutterStageHunk)
" Funciona como un git restore
nmap ghu <Plug>(GitGutterUndoHunk)
" Funciona para ver los cambios realizados
nmap ghp <Plug>(GitGutterPreviewHunk)

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" ------------
" ( Configuracion ) { Emmet }
" >>>>>>
" https:/github.com/mattn/emmet-vim
" ------------

"To remap the default <C-Y> leader:
let g:user_emmet_leader_key='<C-Y>'

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.
