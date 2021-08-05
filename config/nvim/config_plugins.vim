"  -----------------------------------
"  Configuracion Plugins
"  -----------------------------------

"sync open file with NERDTre

"set guifont=Hack_NF:h12  "Fuente y tamaño de fuente

" ------------
" ( Configuracion ) { Dashboard }
" ------------

"autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

let g:dashboard_session_directory = ['~/.config/nvim/session']

"let g:dashboard_custom_header = [ 
  "\ "                                                                                            ",
  "\ "  ________                    /\  __      ________  .__                  ____ ___           ", 
  "\ "  \______ \     ____    ____  )/_/  |_   /  _____/  |__|___  __  ____   |    |   \______    ", 
  "\ "   |    |  \   /  _ \  /    \   \   __\ /   \  ___  |  |\  \/ /_/ __ \  |    |   /\____ \   ",
  "\ "   |    `   \ (  <_> )|   |  \   |  |   \    \_\  \ |  | \   / \  ___/  |    |  / |  |_> >  ",
  "\ "  /_______  /  \____/ |___|  /   |__|    \______  / |__|  \_/   \___  > |______/  |   __/   ", 
  "\ "          \/              \/                   \/                   \/            |__|      ", 
  "\ "                                                                                            ",
  "\ ]

"let g:dashboard_preview_command="cat"
""let g:dashboard_preview_file="~/.config/environment.d/sway.conf"
"let g:dashboard_preview_pipeline="lolcat"
"let g:dashboard_preview_file_width=70
"let g:dashboard_preview_file_height=10

let g:dashboard_custom_header = [ 
\ "                     ¿El esfuerzo de hoy                     ",
\ "           Ayuda a construir el futuro que deseas?           ", 
\]

"let g:dashboard_custom_header = [ 
"\ "                                   ",
"\ "   ___              ( )     _      ", 
"\ "  |   \  ___  _ _    \|    | |_    ",
"\ "  | |) |/ _ \| ' \         |  _|   ",
"\ "  |___/ \___/|_||_|         \__|   ",
"\ "  __      __                _  _   ",
"\ "  \ \    / / ___  _ _  _ _ | || |  ",
"\ "   \ \/\/ / / _ \| '_|| '_| \_. |  ",
"\ "    \_/\_/  \___/|_|  |_|   |__/   ", 
"\ "                                   ",
"\]

let g:indentLine_fileTypeExclude = ['dashboard']

" ------------
" ( Configuracion ) { Easymotion }
" ------------

nmap <Leader>s <Plug>(easymotion-s2)
"nmap <Leader>t <Plug>(easymotion-t2)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" ------------
" ( Configuracion ) { Markdown Preview }
" ------------

let vim_markdown_preview_hotkey='<C-m>' 
let vim_markdown_preview_browser='brave'
" Comentar github=1 para usar markdown
let vim_markdown_preview_github=1
" Dejar descomentado si se va a usar grip


" ------------
" ( Configuracion ) { Ferm }
" ------------

" Disable netrw.
"let g:loaded_netrw  = 1
"let g:loaded_netrwPlugin = 1
"let g:loaded_netrwSettings = 1
"let g:loaded_netrwFileHandlers = 1



augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

" Custom settings and mappings.
let g:fern#disable_default_mappings = 1

" not-hidden
let g:fern#default_hidden= 1

" exclude
let g:fern#default_exclude='.node_modules'
let g:fern#default_exclude='.git'

" bookmark
"let g:fern#mapping#bookmark#disable_default_mappings = 1

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> d <Plug>(fern-action-remove)
  nmap <buffer> t <Plug>(fern-action-trash) 
" ------------
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> s <Plug>(fern-action-mark:set) 
  nmap <buffer> f <Plug>(fern-action-mark:unset)
  "nmap <buffer> s <Plug>(fern-action-mark-toggle)
  nmap <buffer> r <Plug>(fern-action-rename)
  nmap <buffer> h <Plug>(fern-action-hidden-toggle)
  nmap <buffer> R <Plug>(fern-action-reload)
  nmap <buffer> y <Plug>(fern-action-yank)
  nmap <buffer> b <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> u <Plug>(fern-action-leave)
  nmap <buffer><nowait> c <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END

" Fixer
let g:cursorhold_updatetime = 100

" Devicoins
let g:fern#renderer = "nerdfont"

" Palette
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

map <Leader>n :Fern . -reveal=%<CR>
"noremap <silent> <C-m> :Fern . -drawer -reveal=% -toggle -width=30<CR><C-w>=
noremap <silent> <Leader>m :Fern . -drawer -reveal=% -toggle -width=35<CR><C-w>=

" ------------
" ( Configuracion ) { CHADtree }
" ------------
"nnoremap <leader>v <cmd>CHADopen<cr>
"nnoremap <leader>l <cmd>call setqflist([])<cr>

"let g:chadtree_settings = {
      "\"keymap": {
            "\"h_split": ["i"],
            "\"v_split": ["s"],
            "\"select": ["w"]
      "\},
      "\"view":
      "\{
            "\"width": 30
      "\}
      "\}

" ------------
" ( Configuracion ) { NERDTree }
" ------------

"let NERDTreeQuitOnOpen=1

"" Open nerdtre with vim
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

"" Desactivar visualizacion de ayuda press ?
"let NERDTreeMinimalUI=1

""let NERDTreeWinSize= 27
"let NERDTreeWinPos="right"
"let g:NERDTreeIgnore = ['^node_modules$']
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

"" Check if NERDTree is open or active
"function! IsNERDTreeOpen()        
  "return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

""let NERDTreeChDirMode=2
"let NERDTreeIgnore = ['\~$','\.pyc$','\*NTUSER*','\*ntuser*','\NTUSER.DAT','\ntuser.ini']
"" https://stackoverflow.com/questions/33848305/nerdtree-gives-error-x-files-could-not-be-loaded-into-the-nerdtree

" ------------
" ( Configuracion ) { Gruvbox Tema Visual }
" ------------

"colorscheme koehler

set background=dark

"let g:bracey_auto_start_browser=0                                
"let g:bracey_server_allow_remote_connections=1                   
"let g:bracey_server_port=8081
"let g:bracey_browser_command
"let g:bracey_server_log

" highlight Normal ctermbg=NONE
" Cambiar esquema de color de vim
" colorscheme darkblue

"colorscheme darkblue
let g:gruvbox_italic=0 "Desactivar italica
 colorscheme gruvbox
 let g:gruvbox_contrast_dark = 'hard'

"set t_Co=1024 

" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
"autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE 




" ------------
" ( Configuracion ) { TokyoNight Tema Visual }
" ------------

" Appereance
" Night Owl
" If you have vim >=8.0 or Neovim >= 0.1.5

"if has('nvim') || has('termguicolors')
  "set termguicolors
"endif
 
" Tokyo Night
"colorscheme tokyonight
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

" colorscheme 


" ------------
" ( Configuracion ) { Git gutter }
" ------------

"let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
"let g:gitgutter_terminal_reports_focus=0 

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <Leader>ha <Plug>(GitGutterStageHunk)
nmap <Leader>ghr <Plug>(GitGutterRevertHunk)
nmap <Leader>ghu <Plug>(GitGutterUndoHunk)


" ------------
" ( Configuracion ) { Vim-Airline }
" ------------
"au VimEnter * let [g:airline_section_x, g:airline_section_b] = [airline#section#create(['hunks']), airline#section#create(['branch'])]

  "function! AirlineInit()
    "let g:airline_section_a = airline#section#create(['mode', ' ', 'foo'])
    "let g:airline_section_b = airline#section#create_left(['ffenc','file'])
    "let g:airline_section_c = airline#section#create(['%{getcwd()}'])
    "let g:airline_section_z = airline#section#create([])
  "endfunction
  "autocmd User AirlineAfterInit call AirlineInit()

"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"let g:Powerline_mode_V="V·LINE"
"let g:Powerline_mode_cv="V·BLOCK"
"let g:Powerline_mode_S="S·LINE"
"let g:Powerline_mode_cs="S·BLOCK"


"""" All of your Plugins must be added before the following line
"""filetype on
"""filetype plugin on
"""filetype plugin indent on


""""let g:airline#extensions#tabline#enabled = 1
"""set laststatus=2
""""let g:airline_powerline_fonts = 1

"""set statusline+=%#warningmsg#
""""set statusline+=%{SyntasticStatuslineFlag()}
""""set statusline+=%*

"""let g:syntastic_always_populate_loc_list = 1
"""let g:syntastic_auto_loc_list = 1
"""let g:syntastic_check_on_open = 1
"""let g:syntastic_check_on_wq = 0


"let g:airline#extensions#tabline#buffer_nr_show = 1
""let g:nerdtree_tabs_open_on_console_startup=1
"let g:airline#extensions#tabline#enabled = 1  " Activar vista de buffers
"let g:airline#extensions#tabline#formatter = 'unique_tail' " Mostrar solo nombre de archivo en buffer
""let g:airline#extensions#nerdtree_statusline = 1

""let g:Powerline_symbols = 'fancy'
""set t_Co=256
""set fillchars+=stl:\ ,stlnc:\
""let g:Powerline_mode_V="V·LINE"
""let g:Powerline_mode_cv="V·BLOCK"
""let g:Powerline_mode_S="S·LINE"
""let g:Powerline_mode_cs="S·BLOCK"

  "let g:airline#extensions#ctrlspace#enabled = 1

"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif

  "" unicode symbols  https://stackoverflow.com/questions/19105279/how-can-i-setup-my-vim-airline-or-vim-powerline
  "" https://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim
 
  "let g:airline_left_sep = '»'
  "let g:airline_left_sep = ''
  ""let g:airline_left_sep = '▶'
  "let g:airline_right_sep = '«'
  "let g:airline_right_sep = ''
  ""let g:airline_right_sep = '◀'
  "let g:airline_symbols.linenr = ''
  "let g:airline_symbols.linenr = ''
  "let g:airline_symbols.linenr = '¶'
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.paste = 'ρ'
  "let g:airline_symbols.paste = 'Þ'
  "let g:airline_symbols.paste = ''
  "let g:airline_symbols.whitespace = 'Ξ'


"let g:airline_section_b = '%branch'
"let g:airline_section_x = airline#section#create(['hunks'])
"let g:airline_section_y = '%y' 
"let g:airline_section_c = '%t'

""set statusline=%F%m%r%h%w\ 
""set statusline+=%{fugitive#statusline()}\    
""set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
""set statusline+=\ [line\ %l\/%L]          
""set statusline+=%{rvm#statusline()}      

""set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ %=\ Line:%l\/%L\ Column:%c%V\ %P

""  
"set stl=%n\:%f%r%m\ \ %{strftime('%H:%M')}
""set stl=%n\:%f%r%m\ \ \|%l\:%c\/%L\L\|\ %{strftime('%H:%M')}
""set stl=%n\:%f%r%m\ \|%{&ff}\/%{&fenc}\|\ \|%l\:%c\/%L\L\|\ %{strftime('%H:%M')}

  ""au VimEnter * let [g:airline_section_x, g:airline_section_b] = [airline#section#create(['hunks']), airline#section#create(['branch'])]

"" Ajustes https://github.com/dominikduda/vim_current_word
"" :h airline-sections

" ------------
" ( Configuracion ) { Vim_Current_Word }
" ------------


" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1 "Cambiar marcado de palabras coincididas
" The word under cursor:
let g:vim_current_word#highlight_current_word = 0 "Desactivar marcado en la palabra del cursos

" ------------
" ( Configuracion ) { kiteco-vim }
" ------------


"let g:kite_supported_languages = ['python', 'javascript', 'go']
"let g:kite_supported_languages = ['*']
"let g:kite_tab_complete=1

" ------------
" ( Configuracion ) { Ctrl + p }
" ------------

let g:ctrlp_cmd = 'CtrlP' 
let g:ctrlp_map = '<c-p>'

let g:ctrlp_switch_buffer = 'Et'

" Desabilita la ruta por defecto
let g:ctrlp_working_path_mode = 'ra'

" Ctrp + P archivos y carpetas a ignorar
set wildignore+=*\\tmp\\*,*\\node_modules\\*,*.swp,*.zip,*.exe


" ------------
" ( Configuracion ) { Otras-Configuraciones }
" ------------

" --- ingresar al modo normal en cmd
"tnoremap <Esc> <C-W>N
"set notimeout ttimeout timeoutlen=100

" split resize
"nnoremap <Leader>> 10<C-w>>
"nnoremap <Leader>< 10<C-w><

" Ruta configuracion coc
" https://www.youtube.com/watch?v=---9hzqiEJc

" ------------
" ( Configuracion ) { Folding_and_PonintCursor_Save }
" ------------ 

" https://stackoverflow.com/questions/2142402/code-folding-is-not-saved-in-my-vimrc

let &viewdir=expand("~/") . ".config/nvim/folding"
if !isdirectory(expand(&viewdir))|call mkdir(expand(&viewdir), "p", 451)|endif

autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

    "Vim folding commands
    " https://stackoverflow.com/questions/2362914/fold-function-in-vim
"---------------------------------
"za toggle a fold at the cursor.
"zf/ string creates a fold from the cursor to string .
"zf#j creates a fold from the cursor down # lines.
"zj moves the cursor to the next fold.
"zk moves the cursor to the previous fold.
"zo opens a fold at the cursor.
"zO opens all folds at the cursor.
"zc closes a fold under cursor. 
"zm increases the foldlevel by one.
"zM closes all open folds.
"zr decreases the foldlevel by one.
"zR decreases the foldlevel to zero -- all folds will be open.
"zd deletes the fold at the cursor.
"zE deletes all folds.
"[z move to start of open fold.
"]z move to end of open fold.

" only HTML, JSX , PHP, CSS
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx,*.php,*.css' 


" ------------
" ( Configuracion ) { Coc }
" ------------

	let g:coc_filetype_map = {
		\ 'html.swig': 'html',
		\ 'wxss': 'css',
		\ }

let g:coc_global_extensions = [ 'coc-snippets', 'coc-emmet', 'coc-tsserver', 'coc-phpls', 'coc-prettier', 'coc-discord', 'coc-git'] 

" g:clojure_fuzzy_indent
"let g:fzf_buffers_jump = 0


" ------------
" ( Configuracion ) { Coc-git }
" ------------
autocmd User CocGitStatusChange {command}
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

" ------------
" ( Configuracion ) { Terminal }
" ------------

"map zz <Plug>(coc-terminal-toggle)
"tnoremap zz <C-\><C-N> <Plug>(coc-terminal-toggle)
"tnoremap zz <C-\><C-N> <Plug>(coc-terminal-toggle)

"tnoremap lv browser-sync start --server --index ".html" --files "css/*.css" "*.html" "*.js"
"server": "live-server --host=127.0.0.1 --port=8080 --entry-file=index.html" then npm run server
tnoremap ;; live-server --host=127.0.0.1 --port=8080 --entry-file=index.html
tnoremap zz <C-\><C-N>

" ------------
" ( Configuracion ) { ToggleTerminal }
" ------------


" map <C-@> to toggle
"tnoremap <silent> <C-a> <C-w><Plug>(coc-terminal-toggle)<CR>


"nnoremap <silent> <C-a> :ToggleTerminal<CR>
" https://stackoverflow.com/questions/1236563/how-do-i-run-a-terminal-inside-of-vim
"tnoremap <Leader>vp :VimuxPromptCommand<CR>
"nnoremap <Leader>vp :VimuxPromptCommand<CR>

"" set your favorite shell
"let g:toggle_terminal#command = 'term'

"" set terminal window position
"" (see possible options at :help vertical)
"let g:toggle_terminal#position = 'topleft'


" ( Configuracion ) { Coc-snippets }
" ------------
	" Disable completion for snippets
"autocmd FileType css let b:coc_suggest_disable = 1
"autocmd FileType html let b:coc_suggest_disable = 1

"     Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
"     Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
"     Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
"     Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'
"     Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)
"     Use <leader>x for convert visual selected code to snippet
"xmap <leader>x  <Plug>(coc-convert-snippet)
" Activar closetag.vim
"let g:closetag_html_style=1
"au Filetype html,xml,xsl source C:\Program Files\Vim\closetag.vim

