 let g:nord_italic = v:true
 let g:nord_italic_comments = v:false
 let g:nord_bold = v:false
 let g:nord_underline = v:true
 let g:nord_uniform_diff_background = v:true

augroup nord_customization
  autocmd!
    " your other autocmds...
    autocmd ColorScheme nord ++nested hi Normal guibg=#242933
augroup END

colorscheme nord
