"the most basic configurations
syntax on
"adjust java highlight to change the syntax highlighter
highlight link JavaIdentifier NONE
"adjust python highlight
"let g:python_highlight_all = 1
set termguicolors
set background=dark

    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
"    highlight Normal guibg=none
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
hi CursorLineNR guifg=#ffcb6b
set cursorline
set cursorlineopt=number
highlight Pmenu guifg=#dee1e4 guibg=none
"highlight PmenuSel guifg=#060606 guibg=#F99575

" TSX sintax
" dark red
"hi tsxTagName guifg=#E06C75
"hi tsxComponentName guifg=#E06C75
"hi tsxCloseComponentName guifg=#E06C75 cterm=italic

" orange
"hi tsxCloseString guifg=#F99575
"hi tsxCloseTag guifg=#F99575
"hi tsxCloseTagName guifg=#F99575
"hi tsxAttributeBraces guifg=#5EACD3
"hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
"hi tsxTypeBraces guifg=#5eacd3 cterm=italic
" dark-grey
"hi tsxTypes guifg=#5eacd3 cterm=italic

"hi ReactState guifg=#C176A7 cterm=italic
"hi ReactProps guifg=#D19A66 cterm=bold
"hi ApolloGraphQL guifg=#CB886B
"hi Events ctermfg=204 guifg=#56B6C2
"hi ReduxKeywords ctermfg=204 guifg=#C678DD
"hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
"hi WebBrowser ctermfg=204 guifg=#56B6C2
"hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
