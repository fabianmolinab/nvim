let g:prettier#autoformat = 1
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = true
let g:prettier#config#require_pragma = false
let g:prettier#config#print_width = 80
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#bracket_spacing = true
let g:prettier#config#insert_pragma = false
let g:prettier#config#jsx_bracket_same_line = false
let g:prettier#config#jsx_single_quote = true
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#quote_props = 'as-needed'
let g:prettier#config#semi = true
let g:prettier#config#parser=''

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
nmap <Leader>py <Plug>(Prettier)

