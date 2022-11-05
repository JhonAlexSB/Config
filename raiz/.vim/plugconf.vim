"  -----------------------------------
"  Config Plugins
"  >>>>>>   
"  -----------------------------------

" ------------
" ( Configuracion ) { Easymotion }
" >>>>>>
" https:/github.com/easymotion/vim-easymotion
" ------------

"nmap <Leader>s <Plug>(easymotion-s2)
""nmap <Leader>t <Plug>(easymotion-t2)
"map <Leader>l <Plug>(easymotion-lineforward)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)

" ------------
" ( Configuracion ) { Sneak }
" >>>>>>
" https:/github.com/justinmk/vim-sneak
" ------------

map gs <Plug>Sneak_,

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

" ------------
" ( Configuracion ) { ALE }
" >>>>>>
" https://github.com/dense-analysis/ale
" ------------

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let b:ale_linters = ['php', 'javascript']

" ------------
" ( Configuracion ) { gruvbox }
" >>>>>>
" https://github.com/morhetz/gruvbox
" ------------

"set background=dark

""""Desactivar italica
  "let g:gruvbox_italic=0 
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'


"""colorscheme darkblue

" ------------
" ( Configuracion ) { gruvbox }
" >>>>>>
" https://github.com/morhetz/gruvbox
" ------------

"Trigger configuration. You need to change this to something other than <tab>
"if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

