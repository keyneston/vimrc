" Run a given vim command on the results of alt from a given path.
" See usage below.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

let output=system('which alt')
if !v:shell_error
  " Find the alternate file for the current path and open it
  nnoremap <leader>. :call AltCommand(expand('%'), ':e')<cr>
endif



