"  -----------------------------------
"   Mapeo de tecla
"  -----------------------------------

"  <Leader> valor definido barra espacio
let mapleader=","
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
nmap <Leader>b :buffers<CR>:buffer<Space>
  " Ingresar al modo visual
imap jk <ESC> 
nmap <leader>f :set filetype=
":'<,'>
vmap <leader>i :''norm 
nmap <leader><leader>h :cd %:h<CR> 
nmap <leader>so :so%<CR>
"nmap <leader>so :so ~/.config/nvim/init.vim<CR>
nmap <leader>e :e ~/.config/nvim/init.vim<CR>
nmap <leader>ds :Dashboard<CR>

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" si da error ejecutable escribir en linea de comandos
" npm install -g prettier
"nmap <Leader>r <Plug>(Prettier)

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

" Folding
"nmap <silent>U za<CR> 
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space> zf

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


"npm install -g live-server
"live-server file_name


" Atajos de teclado 
" Fern

" u | para devolverse entre carpeta
" n | new file
" m | mover o renombrar archivo
" r | ruta de archivo
" t | borrar 
" s | seleccionar 


