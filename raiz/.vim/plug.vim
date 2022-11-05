 call plug#begin('~/.vim/pack/plugin')
 
" Autocompletador coc
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
""" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install  --frozen-lockfile'}


" Plug 'honza/vim-snippets'
"
" Plug 'SirVer/ultisnips'

"Plug 'easymotion/vim-easymotion'

" Temas
Plug 'morhetz/gruvbox'

" https://github.com/ghifarit53/tokyonight-vim 
" Git
Plug 'airblade/vim-gitgutter'

" Sintax
Plug 'dense-analysis/ale'

" Snippet
Plug 'mattn/emmet-vim'

call plug#end()
