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
    "highlight Normal guibg=none
    highlight LineNr guifg=#2DC3DA
    highlight netrwDir guifg=#2DC3DA
    highlight qfFileName guifg=#aed75f
hi CursorLineNR guifg=#ffcb6b
set cursorline
set cursorlineopt=number

"Menu autocompletado
highlight Pmenu guifg=#dee1e4 guibg=none
"highlight PmenuSel guibg=#C14A4A guifg=#dee1e4

"Coc Error Color
hi! CocErrorSign guifg=#F66B0E

" TSX sintax
" dark red
"hi tsxTagName guifg=#84EEA2
"hi tsxComponentName guifg=#2DC3DA cterm=italic
"hi tsxCloseComponentName guifg=#84EEA2 cterm=italic

" orange
"hi tsxCloseString guifg=#F99575
"hi tsxCloseTag guifg=#84EEA2
"hi tsxCloseTagName guifg=#84EEA2
"hi tsxAttributeBraces guifg=#C14A4A
"hi tsxEqual guifg=#84EEA2

" yellow
"hi tsxAttrib guifg=#2DC3DA cterm=italic

" light-grey
"hi tsxTypeBraces guifg=#2DC3DA cterm=italic
" dark-grey
"hi tsxTypes guifg=#2DC3DA cterm=italic

hi ReactState guifg=#C14A4A cterm=italic
hi ReactProps guifg=#D19A66 cterm=bold
"hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#2DC3DA
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#2DC3DA
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
