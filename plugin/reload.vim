" This file doesn't get reloaded as part of reload all.

let s:path = expand('<sfile>:p')

function! s:reload_all() 
  " TODO: use a variable instead of hardcoded
  for i in globpath('~/.vim/plugin/', '**/*.vim', 0, 1, 1)
    " We can't modify the reload_all function while it is in use. So we
    " instead we reload everything but this file. Then in the command that
    " calls this we reload this file explicitly.
    if resolve(fnamemodify(i, ':p:.')) == s:path
      continue
    endif
      
    execute 'so ' . i
  endfor

  for i in globpath('~/.vim/ftplugin/', '**/*.vim', 0, 1)
    execute 'so ' . i
  endfor

  so $MYVIMRC
  if !has('nvim')
    so $MYGVIMRC
  endif
endfunction

command! ReloadAll call s:reload_all()
nnoremap <leader>sv :ReloadAll<CR>:echom "Reloaded at " . strftime('%c')<CR>
