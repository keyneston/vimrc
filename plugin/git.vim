" GitGutter
let g:gitgutter_diff_args = '-w'
let g:gitgutter_highlight_lines = 1

" let g:gitgutter_sign_added = 'xx'
" let g:gitgutter_sign_modified = 'yy'
" let g:gitgutter_sign_removed = 'zz'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_removed_above_and_below = '{'
" let g:gitgutter_sign_modified_removed = 'ww'

augroup gitguttercolours
  au!

  autocmd ColorScheme * highlight! link SignColumn LineNr
  "" If the current colorscheme is having issues where the background color
  "" is getting set on the symbols, use these.
  " autocmd ColorScheme * highlight! GitGutterAdd guibg=NONE
  " autocmd ColorScheme * highlight! GitGutterChange guibg=NONE
  " autocmd ColorScheme * highlight! GitGutterDelete guibg=NONE
  " autocmd ColorScheme * highlight! GitGutterChangeDelete guibg=NONE
augroup END


if has("gui_running")
  let g:gitgutter_sign_column_always = 1
else
  let g:gitgutter_enabled = 0
endif

command! Gadd :!git add %
