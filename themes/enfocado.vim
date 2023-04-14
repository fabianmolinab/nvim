"let g:enfocado_style = 'neon'
let g:enfocado_plugins = [
  \   'aerial',
  \   'bufferline',
  \   'cmp',
  \   'dap-ui',
  \   'gitsigns',
  \   'illuminate',
  \   'indent-blankline',
  \   'lazy',
  \   'lspconfig',
  \   'matchup',
  \   'neo-tree',
  \   'noice',
  \   'null-ls',
  \   'smoothcursor',
  \   'substitute',
  \   'surround',
  \   'telescope',
  \   'treesitter',
  \   'ts-rainbow2',
  \   'visual-multi',
  \   'yanky'
  \ ]
augroup enfocado_customization
  autocmd!
    " your other autocmds...
    autocmd ColorScheme enfocado ++nested highlight Type cterm=NONE gui=NONE
    autocmd ColorScheme enfocado ++nested highlight TypeBuiltin cterm=NONE gui=NONE
    "autocmd ColorScheme enfocado ++nested hi @type guifg=#F09383 
    "autocmd ColorScheme enfocado ++nested hi @variable guifg=#AA554D
    "autocmd ColorScheme enfocado ++nested hi @function guifg=#DB635D
    "autocmd ColorScheme enfocado ++nested hi @function guifg=#DB635D
augroup END

colorscheme enfocado 
