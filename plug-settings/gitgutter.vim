let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

let g:gitgutter_override_sign_column_highlight = 1

" vim-gitgutter used to do this by default:
highlight! link SignColumn LineNr

let g:gitgutter_sign_allow_clobber = 1

set updatetime=250
