let g:airline#extensions#tabline#enabled = 1  " show open buffers (like tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  " Show only filename
let g:airline_powerline_fonts = 1 " Change separetors to be triangles
let g:airline_theme='palenight'
let g:airline_section_z = airline#section#create(['windowswap','%3p%% ','linenr',':%3v'])
let g:airline_skip_empty_sections = 1
