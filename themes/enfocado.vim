let g:enfocado_style = 'nature'
let g:enfocado_plugins = [
  \ 'bufferline',
  \ 'cmp',
  \ 'gitsigns',
  \ 'lsp',
  \ 'telescope',
  \ 'neerdtree',
  \ 'plug',
  \ 'treesitter',
  \ 'todo-commets',
  \ 'tree',
  \ 'indent-blankline',
  \ ]
augroup enfocado_customization
  autocmd!
    " your other autocmds...
    autocmd ColorScheme enfocado ++nested highlight Type cterm=NONE gui=NONE
    autocmd ColorScheme enfocado ++nested highlight TypeBuiltin cterm=NONE gui=NONE
augroup END

colorscheme enfocado 
