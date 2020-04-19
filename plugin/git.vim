" GitGutter
let g:gitgutter_diff_args = '-w'

if has("gui_running")
  let g:gitgutter_sign_column_always = 1
else
  let g:gitgutter_enabled = 0
endif
