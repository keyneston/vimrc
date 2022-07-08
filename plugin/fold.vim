function! MyFoldText()
    let line = getline(v:foldstart)
    let foldedlinecount = v:foldend - v:foldstart + 1
    return ' ⭤  ' . foldedlinecount . line
endfunction
set foldtext=MyFoldText()
set fillchars=fold:\ 

set foldmethod=indent

nnoremap <space> za

function! ElasticFold()
  let thisline = getline(v:lnum)
  
  " Bunch empty lines in with either the next or previous fold.
  if thisline =~? '\v^\s*$' 
    return '-1'
  endif

  if thisline =~ '^// ELASTICSEARCH CONFIDENTIAL.*'
    return 1
  else
    return indent(v:lnum) / &shiftwidth
  endif
endfunction
