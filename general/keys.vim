"Use F5 to refresh your editor with the config file that you specify here
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>
 
"disable the arrow keys to navigate. This is very useful when you want to
"adapt to 'hjkl'
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

" tmux navigator
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>

" Move to the next buffer
" Move to the prevoius buffer
nnoremap <tab> :bnext<CR>
nnoremap <s-tab> :bprevious<CR>

" Close the current buffer
"create a new tab
nnoremap <leader>qq :bdelete<CR>
nnoremap <leader>qb :bdelete!<CR>
nnoremap <leader>t :tabe<CR>

"vertical split
"horizontal split
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>

" Limpiar los resultados de busqueda
nnoremap <silent> // :noh<CR>

"Telescope
nnoremap <Leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <Leader>a <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Leader>mf <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <Leader>ls <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <Leader>ag <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <Leader>of <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <Leader>b <cmd>lua require('telescope.builtin').buffers()<cr>

"Todo Busqueda telescope
nmap <leader>td :TodoTelescope<CR>

"Modo Visual indent
vmap <silent> < <gv
vmap <silent> > >gv

"Git Diff View
nnoremap <leader>df :DiffviewOpen<CR>
nnoremap <leader>dx :DiffviewClose<CR>

"Git Stage hunk 
nnoremap <leader>hs :Gitsigns stage_hunk<CR>
nnoremap <leader>hu :Gitsigns undo_stage_hunk<CR>

"Git Stage lines
vnoremap <leader>hs :Gitsigns stage_hunk<CR>
nnoremap <leader>hu :Gitsigns undo_stage_hunk<CR>

"GitSigns Preview: "Muestra una previsualización de los cambios entre lineas
nnoremap <leader>hp :Gitsigns preview_hunk<CR> 

"Debuger
nmap <leader>db :DapToggleBreakpoint<CR>    "breakpoint
nmap <leader>dc :DapContinue<CR>  "Lanzar debugger
nmap <leader>ds :DapTerminate<CR> "Detener debuger

"Lanzar y cierra interfaz debugger
nmap <leader>du :lua require("dapui").toggle()<CR>

"Neotree
nnoremap <leader>p :NeoTreeFocusToggle<CR>
nnoremap <leader>g :NeoTreeFocusToggle git_status<CR>
