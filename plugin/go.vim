""""""
" Go "
""""""
let output=system('which goimports')
if !v:shell_error
  let g:gofmt_command="goimports"
  let g:go_fmt_command="goimports"
endif

"let g:go_disable_autoinstall = 0
let g:go_bin_path = expand("$GOBIN") . "/"
let g:go_doc_popup_window=1

augroup go_settings
  au!
  au BufEnter nnoremap <buffer> <localleader>i :GoInfo<CR>
  au FileType go setlocal tabstop=4 shiftwidth=4 textwidth=0 formatoptions=crqj
augroup END
