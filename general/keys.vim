"Use F5 to refresh your editor with the config file that you specify here
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

"Desabilita la navegación con las flechas 
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"Las fechas reasignan el ancho y alto de la ventana
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"Configuración archivos
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

"Salir del modo Insert
imap jj <Esc>

tmap <esc> <C-\><C-n>

nmap <c-t> <Plug>(NERDTermToggle)
tmap <c-t> <Plug>(NERDTermToggle)

" Easy Motion
noremap f <Plug>(easymotion-s2)

" Navegación con Tmux
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>

nnoremap <tab> :bnext<CR>
nnoremap <s-tab> :bprevious<CR>

"Cerra buffer y cerrar buffer sin guardar
nnoremap <leader>qq :bdelete<CR>
nnoremap <leader>qb :bdelete!<CR>
nnoremap <leader>t :tabe<CR>

"vertical split
"horizontal split
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>

" Limpiar los resultados de busqueda
nnoremap <silent> // :noh<CR>

"----Telescope
"Buscar archivos
  nnoremap <Leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
  "Buscar dentro del projecto cualquier palabra
  nnoremap <Leader>a <cmd>lua require('telescope.builtin').live_grep()<cr>

  nnoremap <Leader>mf <cmd>lua require('telescope.builtin').marks()<cr>
  "Lista de commits
  nnoremap <Leader>ls <cmd>lua require('telescope.builtin').git_commits()<cr>
  "Buscar archivos de git
  nnoremap <Leader>ag <cmd>lua require('telescope.builtin').git_files()<cr>
  "Lista los archivos o ventanas cerradas
  nnoremap <Leader>of <cmd>lua require('telescope.builtin').oldfiles()<cr>
  "Lista buffers o pestañas abiertos
  nnoremap <Leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
"----------
"Todo Busqueda telescope
nmap <leader>td :TodoTelescope<CR>

"Modo Visual indent
vmap <silent> < <gv
vmap <silent> > >gv

"Git Diff View
nnoremap <leader>df :DiffviewOpen<CR>
nnoremap <leader>dx :DiffviewClose<CR>

"Git Stage hunk: Para agregar a stage lineas de cambios individuales o al contrario
nnoremap <leader>hs :Gitsigns stage_hunk<CR>
nnoremap <leader>hu :Gitsigns undo_stage_hunk<CR>

"Git Stage lines
vnoremap <leader>hs :Gitsigns stage_hunk<CR>
nnoremap <leader>hu :Gitsigns undo_stage_hunk<CR>

"GitSigns Preview: "Muestra una previsualización de los cambios entre lineas
nnoremap <leader>hj :Gitsigns preview_hunk<CR> 

"Debuger
nmap <leader>db :DapToggleBreakpoint<CR>    "Punto de espera
nmap <leader>dc :DapContinue<CR>  "Lanzar debugger
nmap <leader>ds :DapTerminate<CR> "Detener debuger

"Lanzar y cierra interfaz debugger
nmap <leader>du :lua require("dapui").toggle()<CR>

"Neotree
nnoremap <leader>p :NeoTreeFocusToggle<CR>
nnoremap <leader>g :NeoTreeFocusToggle git_status<CR>
