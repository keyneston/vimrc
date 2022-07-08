macm File.New\ Tab key=<nop>
macm Edit.Find.Find… key =<nop>

let $TERM='xterm-256color'
set t_Co=256

"colorscheme jellybeans
"colorscheme codeschool

set nocursorline
set go=c "not sure what this line is?

function! ResetFont()
  set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h11
  " set guifont=Andale\ Mono:h12

  if &guifont == "JetBrainsMono\ Nerd\ Font\ Mono:h11"
    set antialias
  else
    set noantialias
  endif
endfunction

call ResetFont()
noremap <D-0> :call ResetFont()<CR>
