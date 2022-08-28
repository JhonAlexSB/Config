"  -----------------------------------
"  Config Plugins
"  >>>>>>   
"  -----------------------------------



" assuming you want to use snipmate snippet engine

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
nmap ghu <Plug>(GitGutterUndoHunk)

nmap ghp <Plug>(GitGutterPreviewHunk)

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
