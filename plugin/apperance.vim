syntax enable

if has("gui_running")
  "colorscheme jellybeans
  "colorscheme codeschool

  try
    colorscheme wombat256mod
    autocmd ColorScheme * highlight! link SignColumn Normal 
    autocmd ColorScheme * highlight! link NonText Normal
  catch
    echo "Error loading wombat256mod"
  endtry
  " something strange is going on and the colorscheme isn't being correctly
  " set. Setting it a second time seems to fix this issue.
  try
    colorscheme wombat256mod
  endtry

  set guifont=Andale\ Mono:h12
  set noantialias

  set nocursorline
  set go=c "not sure what this line is?
else
  " Do terminal only stuff here.
  set background=light
  "colorscheme Jellybeans
  "set title
  "set titleold=""
endif
