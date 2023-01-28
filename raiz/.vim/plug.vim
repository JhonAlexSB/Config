 call plug#begin('~/.config/vim/pack/plugin')
 
" Autocompletador coc
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
""" Or build from source code by using yarn: https://yarnpkg.com
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install  --frozen-lockfile'}

"Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'

" Temas
Plug 'morhetz/gruvbox'
"Plug 'Yggdroot/identLine'

" https://github.com/ghifarit53/tokyonight-vim 
" Git
Plug 'airblade/vim-gitgutter'

" Sintax
Plug 'dense-analysis/ale'

" Snippet
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

""Sintax
"Plug 'sheerun/vim-polyglot' "resalta de color los lenguajes de programacion
"Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta
"Plug 'KabbAmine/vCoolor.vim'   "insertar color, alt +c, atl + r; alt + v
"Plug 'valloric/matchtagalways' " Para sombrear etiquetas de inicio y de salida
"Plug 'sbdchd/neoformat'  "prettier javascript


""IDE
"Plug 'terryma/vim-multiple-cursors' " ctrl n   v 
"Plug 'easymotion/vim-easymotion'  "buscar una palabra en nuestra pagina actual <leader>s +(letra)
"Plug 'Yggdroot/indentLine'              "indentacion
"Plug 'scrooloose/nerdcommenter' "comentarios
"Plug 'jiangmiao/auto-pairs'             "autocompletado de llaves, corchetes, etc
"Plug 'osyo-manga/vim-over' "OverCommandLine%s/ ENTER palabra/
"Plug 'tpope/vim-surround'  "Para envolver una palabra en un signo, corchete, parentesis
""Para poder envolver una palabra /// ysiw + signo
""Para cambiar de signo 'hello world' a un <p>hello world</p> /// digitamos cs'<q>
""Para eliminar un delimitador digitamos ds' /// 'hello' -> hello
""Para dar iconos a nuestros nvim
""Para reemplazar alguna palabra,  :%s/palbra antigua/palabra nueva
"Plug 'tmhedberg/simpylfold' "plegado de codigo
"Plug 'vim-scripts/TaskList.vim'
""todoshow para vim, todo,fixme en mayuscula
""funciona con <leader> t  #salir q, mantener ventana y volver a pantalla e

call plug#end()
