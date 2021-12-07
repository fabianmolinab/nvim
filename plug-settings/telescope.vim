"Config
":lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})
let g:telescope_cache_results = 1
let g:telescpe_prime_fuzzy_find = 1

"GIT
map <Leader>st :Telescope git_status<cr>
map <Leader>lc :Telescope git_commits<cr>
map <Leader>br :Telescope git_branches<cr>
