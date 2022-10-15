let g:enfocado_style = 'neon'
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
    autocmd ColorScheme enfocado ++nested highlight Type cterm=italic gui=italic
    autocmd ColorScheme enfocado ++nested highlight TypeBuiltin cterm=italic gui=italic
augroup END

colorscheme enfocado 
