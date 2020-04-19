" e.g. :Tfdoc aws_instance
"      :Tfdoc -d aws_instance
augroup tf_settings
  au!
  if executable('tfdoc')  
    command! -nargs=* Tfdoc :call system('tfdoc' . ' ' . <q-args>)
    au BufEnter nnoremap <buffer> <localleader>i :Tfdoc<cr>
  endif
augroup END
