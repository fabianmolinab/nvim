let g:airline#extensions#tabline#enabled = 1  " show open buffers (like tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  " Show only filename
let g:airline_powerline_fonts = 1 " Change separetors to be triangles
let g:airline_theme='palenight'
let g:airline_section_z = airline#section#create(['windowswap','|%n|','%3p%%','linenr','%3v'])
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 0
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
