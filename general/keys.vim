"Use F5 to refresh your editor with the config file that you specify here
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>
 
"disable the arrow keys to navigate. This is very useful when you want to
"adapt to 'hjkl'
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"With the arrow keys you can resize your splits
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"with leader w you save the file if it have a name set. The second command
"open your config file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

"ESC mode insert
imap jj <Esc>

"Terminal
vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
vnoremap <C-\> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <C-\> :split<CR>:ter<CR>:resize 15<CR>

"Plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>nc :NERDTreeClose<CR>

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

" clear search results
nnoremap <silent> // :noh<CR>

"fzf
map <Leader>ag :Files<CR>
map <Leader>a :GFiles?<CR>
map <Leader>ls :Commits<CR>
map <Leader>f :GFiles<CR>

"Signify Permite ver los cambios del archivo
" Jump between hunks
nmap <Leader>gj <Plug>(GitGutterNextHunk)  "git next
nmap <Leader>gk <Plug>(GitGutterPrevHunk)  "git previous

"Plug Gina <GitPlug>
nmap <leader>co :Gina compare<CR>
nmap <leader>st :Gina status<CR>
