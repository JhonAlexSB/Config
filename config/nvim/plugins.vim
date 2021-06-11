 call plug#begin('~/.config/nvim/plugged')

"Plug 'vim-syntastic/syntastic'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

 " Tema
 "Plug 'ghifarit53/tokyonight-vim'
 " https://github.com/ghifarit53/tokyonight-vim 

  Plug 'jiangmiao/auto-pairs'
  Plug 'kien/ctrlp.vim'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'

  "Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} 

  "Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/vim-easy-align'

"Plug 'Shougo/vimfiler.vim'
"Plug 'Shougo/unite.vim'

"Plug 'evprkr/galaxian-vim'
Plug 'JamshedVesuna/vim-markdown-preview'

"Plug 'wfxr/minimap.vim'

" Fern
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim' 
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-bookmark.vim'

" Tab lightline

"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'romgrk/barbar.nvim'

Plug 'ap/vim-buftabline'
"Plug 'zefei/vim-wintabs'


" Dashboard
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'

  "Plug 'ms-jpq/chadtree'
  "Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
  Plug 'prettier/vim-prettier'

  "Plug 'pakutoma/toggle-terminal'
  Plug 'christoomey/vim-tmux-navigator'


  "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  "Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


  "Plug 'akinsho/nvim-toggleterm.lua'
   "Plug 'benmills/vimux'
  "Plug 'yggdroot/indentline'
  "Plug 'terryma/vim-multiple-cursors'

  "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  "Plug 'junegunn/fzf.vim'


"Plug 'preservim/NERDTree'
  "Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  "Plug 'Xuyuanp/nerdtree-git-plugin'
  "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  "Plug 'lambdalisue/nerdfont.vim'

" Temas Visuales
  Plug 'morhetz/gruvbox' 
  " Iconos para nerdtree
  Plug 'ryanoasis/vim-devicons' 

  "Plug 'shinchu/lightline-gruvbox.vim'

" Resaltado de palabras coincididas
  Plug 'dominikduda/vim_current_word'  
" Resaltado de colores css
  Plug 'ap/vim-css-color'   
"  Plug 'ryanoasis/vim-devicons'

" Menu de navegacion entre documentos (m) para obciones

" Autocompletador coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'honza/vim-snippets'
" Navegacion entre letras de archivo
  Plug 'easymotion/vim-easymotion'
  Plug 'dmerejkowsky/vim-ale' 
" Corrector de sintaxis
  " Plug 'vim-syntastic/syntastic'

call plug#end()
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
"CocList extensions -> Visualizar extenciones instaladas
"CocUnistall <nombre> -> Desisntalar extencion especificada


"  -----------------------------------
"   Plug Gestor de plugins
"  -----------------------------------
 "https://raw.githubusercontent.com/turbio/bracey.vim/master/autoload/bracey.vim

"  -----------------------------------
"   Instalacion dependecias plugins
"  -----------------------------------

" --Prettier
" Para prettier instalar ( npm install --save-dev --save-exact prettie )
" En caso de que de error ( no prettier executable instalation found )

" --Chadtree
" Ejecutar ( :CHADdeps ) en la terminal de nvim



