syntax enable

if has("gui_running") || has('gui_vimr')
  try
    colorscheme sonokai

    augroup fixcolours
      au!
      autocmd ColorScheme * highlight! link NonText Background
    augroup END

"  " something strange is going on and the colorscheme isn't being correctly
"" " set. Setting it a second time seems to fix this issue.
"try
"  colorscheme wombat256mod
"endtry

  catch
    echo "Error loading colorscheme: " . g:colors_name
  endtry
else
  " Do terminal only stuff here.
  set background=light
  "colorscheme Jellybeans
  "set title
  "set titleold=""
endif
