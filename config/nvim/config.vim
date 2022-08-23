
"  -----------------------------------
"   Configuraciones
"  -----------------------------------

" Helps force plug-ins to load correctly when it is turned back on below.
 filetype off

" when file is modified by other editor
au FocusGained,BufEnter * :checktime

set cursorline
" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set formatoptions=tcqrn1
set noshiftround

set backspace=indent,eol,start " Fixes common blackspace problems

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Speed up scrolling in Vim
set ttyfast

" Turn off modelines
set modelines=0

" For plug-ins to load correctly.
filetype plugin indent on

" Espaciado terminal
set cmdheight=1

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase
" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx' 
set nocompatible " No ser compatible con vi
set number " Mostra numeros en la parte izquierda
set mouse=a " Interactuar con el mouse dentro de vim
set numberwidth=1 " Cambiar ancho de los numeros
set clipboard=unnamedplus " La papelera de vim y el S.0. se maneja igual
syntax enable " Habilitar resaltado de color en sintaxis
set showcmd " Mostrar comandos de teclas pulsadas
set ruler " Mostra numeros de ubicacion
set encoding=utf-8 " Codificacion de arhivos
set showmatch " Resalta la apretura y cierre de parentesis y semejantes
set tabstop=2 " Taps con dos espacios " set sw=2
set softtabstop=2
set shiftwidth=2 " Espaciado automatico despues de enter en {}()[]

set textwidth=80 " Ancho del margen del documento
"set wrap "  Ancho del documento igual a la ventana
set relativenumber " Numeros relativos en la parte izquierda
"set laststatus=1 " Sempre visible barra inferior de estado
set autoindent " Autoindenta los tap segun la linea anterior
set nolist " No mostrar caracteres ocultos (tabuladores o espacios)
set noshowmode " No visualizar (Insert Visual Normal)
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile
"set noundofile es para evitar archivos .un~
" Desconosco sus funciones
set expandtab " Use spaces instead of tabs
set smarttab  " Be smart when using tabs ;)
set ai "Auto indent
set si "Smart indent

" Cambiar entre ventanas
nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-right> :wincmd l<CR>
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-down> :wincmd j<CR>


" Abrir terminal con Ctrl+t
nnoremap <C-t> :call OpenTerminal()<CR>

" Función para abrir el terminal
function! OpenTerminal()
  let buf_num = bufnr('%')
  let buf_type = getbufvar(buf_num, '&buftype', 'not found')

  if buf_type == 'terminal'
    execute 'q'
  else
    let terminal_height = winheight(0) / 3 " Abrir terminal a 1/3 de la altura del buffer
" Reemplazar zsh con shell de preferencia
    execute terminal_height"sp term://zsh" 
    
    execute "set nonu"
    execute "set nornu"
    execute "set nocursorline"
    
    execute "set signcolumn=no"

    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!
 " Navegar con Ctrl+w 
    execute "tnoremap <buffer> <C-w><Up> <C-\\><C-n><C-w><C-k>"
" Cerrar terminal
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>" 
" Escapar a modo normal para moverse a traves de la salida
    execute "tnoremap <buffer> <C-n> <C-\\><C-n>" 
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"
    
    execute "setlocal nobuflisted"

    startinsert!
  endif
endfunction

" Cerrar terminal inmediatamente (sin mostrar código de salida)
augroup terminal_settings
  autocmd!

  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert
  
  autocmd TermClose term://*
    \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
    \   call nvim_input('<CR>') |
    \ endif
augroup END

"Status line
" https://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim


"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set laststatus=2




let ctrlv = "\<C-v>"
set statusline+=%#QuickFixLine#%{(mode()==ctrlv)?'\ \ VISUAL\ BLOCK\ ':''}
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#PmenuSel#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#Search#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#QuickFixLine#%{(mode()=='t')?'\ \ TERMINAL\ ':''}
set statusline+=%#QuickFixLine#%{(mode()=='c')?'\ \ COMMAND\ ':''}

set statusline+=%#FoldColumn#
set statusline+=\ \ %f\ %m

set statusline+=%=" Right side settings
set statusline+=%{StatuslineGit()} " git branch

" info file
set statusline+=\ %#PmenuThumb#
set statusline+=\ %p%%
set statusline+=\ \ Ξ
set statusline+=\ %l/%L
set statusline+=\ ㏑
set statusline+=\ %c
set statusline+=\ %{&fileencoding?&fileencoding:&encoding} 
set statusline+=\ \  


set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}

" Return branch name
function! StatuslineGit()
  let l:branchname = get(b:, 'git_branch', '') 
  return strlen(l:branchname) > 0?'⎇  '.l:branchname:''
endfunction

"Linea comentada ---
"set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}
"set statusline+=%1*\ %=\ row:%l/%L\ (%03p%%)
"set statusline=%=\ row:%l/%L\ (%03p%%)



"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

"set statusline=
"set statusline +=
"set statusline+=%7*\[%n]                                  buffernr
"set statusline+=%1*\ %<%F\                                File+path
"set statusline+=%2*\ %y\                                  FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            Encoding2
"set statusline+=%4*\ %{&ff}\                              FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  Spellanguage & Highlight on?
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      Modified? Readonly? Top/bot.

"function! HighlightSearch()
  "if &hls
    "return 'H'
  "else
    "return ''
  "endif
"endfunction

"hi User1 guifg=#ffdad8  guibg=#880c0e
"hi User2 guifg=#000000  guibg=#F4905C
"hi User3 guifg=#292b00  guibg=#f4f597
"hi User4 guifg=#112605  guibg=#aefe7B
"hi User5 guifg=#051d00  guibg=#7dcc7d
"hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
"hi User8 guifg=#ffffff  guibg=#5b7fbb
"hi User9 guifg=#ffffff  guibg=#810085
"hi User0 guifg=#ffffff  guibg=#094afe

"set laststatus=2
"set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

"set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ %=\ Line:%l\/%L\ Column:%c%V\ %P











"set guioptions-=m  "menu bar hidde
"set guioptions-=T  "toolbar hidde
"set guioptions-=r  "scrollbar hidde

"Gitgutter Comentar linea 239 del archivo kite.vim evitar conflictos con coc
