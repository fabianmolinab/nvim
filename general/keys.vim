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

"Terminal
vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
vnoremap <C-\> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <C-\> :split<CR>:ter<CR>:resize 15<CR>

" Easy Motion
noremap f <Plug>(easymotion-s2)

"Plugs
map <Leader>nt :NvimTreeOpen<CR>
map <Leader>nc :NvimTreeClose<CR>

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
nnoremap <leader>t :tabe<CR>

"vertical split
"horizontal split
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>

" Limpiar los resultados de busqueda
nnoremap <silent> // :noh<CR>

"Telescope
map <Leader>f :Telescope find_files theme=dropdown<CR>
map <Leader>a :Telescope live_grep theme=dropdown<CR>
map <Leader>ls :Telescope git_commits theme=ivy<CR>
map <Leader>ag :Telescope git_files theme=dropdown<CR>
map <Leader>b :Telescope buffers theme=dropdown<CR>

"Todo Busqueda telescope
nmap <Leader>td :TodoTelescope<CR>

