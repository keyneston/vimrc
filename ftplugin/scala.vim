" Used to expand decorations in worksheets
nmap <Leader>ms <Plug>(coc-metals-expand-decoration)

" Toggle panel with Tree Views
nnoremap <silent> <leader>m :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <leader>mp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>mc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>mb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>mf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>

