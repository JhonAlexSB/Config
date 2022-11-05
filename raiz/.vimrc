let mapleader=","
so ~/.vim/plug.vim
so ~/.vim/plugconf.vim
"so ~/.config/Notas/KeyBindings-Nvim
"so ~/.config/Notas/KeyBindings-Vim
so ~/.vim/coc.vim

"  -----------------------------------
"   Mapeo de tecla
"   >>>>>>
"  -----------------------------------

"  <Leader> valor definido barra espacio
"nmap <Leader>nt :NERDTreeFind<CR>
" Guardar y Saliar del cocumento
nmap <Leader>w :w<CR>
" Cierra un buffer
nmap <Leader>q :bd<CR> 
"Fuerza el cierre
nmap <Leader>a :q!<CR> 
" Cambiar entre buffers
nmap <Leader>o :bp<CR>
nmap <Leader>p :bn<CR>


nmap <Leader>c :close<CR>
"Abrir documento desde explorador
map <Leader>b :buffers<CR>:buffer<Space>
  " Ingresar al modo visual
imap jk <ESC> 
nmap <leader>f :set filetype=
":'<,'>
vmap <leader>i :''norm 
nmap <leader><leader>h :cd %:h<CR> 

nmap <leader>so :so ~/.vimrc<CR>
nmap <leader>e :e ~/.vimrc<CR>

"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

" Sort words and numbers
" Ordenar Palabras y numeros
" https://stackoverflow.com/questions/1355004/how-to-sort-numeric-and-literal-columns-in-vim#1355022 

vnoremap f !sort -n -k 2<CR>


" ------------
" ( Configuracion ) { Folding_and_PonintCursor_Save }
" >>>>>>
" ------------ 


" https://stackoverflow.com/questions/2142402/code-folding-is-not-saved-in-my-vimrc

let &viewdir=expand("~/") . ".vim/folding"
if !isdirectory(expand(&viewdir))|call mkdir(expand(&viewdir), "p", 451)|endif

autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

  "Vim folding commands
  " https://stackoverflow.com/questions/2362914/fold-function-in-vim

" Folding
nmap <silent>U za<CR> 
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
"---------------------------------

"" split resize
"nnoremap <leader>> 10<c-w>>
"nnoremap <leader>< 10<c-w><

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>

"nmap <Leader>m :VimFiler<CR>


"Easyer window management
map <leader>h <C-w><Left>
map <leader>j <C-w><Down>
map <leader>k <C-w><Up>
map <leader>l <C-w><Right>

"" Open split
map - :vsplit<CR>
map _ :split<CR>

"" Split resize
map = <C-W>-
map + <C-W>+

"" Vsplit resize
nnoremap <leader>> 1<c-w>>
nnoremap <leader>< 1<c-w><

"" Full resize
map <leader>H <C-W>h<C-W>_
map <leader>J <C-W>j<C-W>_
map <leader>K <C-W>k<C-W>_
map <leader>L <C-W>l<C-W>_

"npm install -g live-server
"live-server file_name

"  -----------------------------------
"  Config
"  >>>>>>
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
set clipboard=unnamed " La papelera de vim y el S.0. se maneja igual
"set clipboard=unnamedplus " La papelera de vim y el S.0. se maneja igual
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

"  -----------------------------------
"  Status Line
"  >>>>>>
"  -----------------------------------

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

