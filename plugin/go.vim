""""""
" Go "
""""""
let output=system('which goimports')
if !v:shell_error
  let g:gofmt_command="goimports"
  let g:go_fmt_command="goimports"
endif

let output=system('which gofumports')
if !v:shell_error
  let g:gofmt_command="gofumports"
  let g:go_fmt_command="gofumports"
endif

"let g:go_disable_autoinstall = 0
let g:go_bin_path = expand("$GOBIN") . "/"
let g:go_doc_popup_window=1

augroup go_settings
  au!
  au BufEnter nnoremap <buffer> <localleader>i :GoInfo<CR>
  au FileType go setlocal tabstop=4 shiftwidth=4 textwidth=0 formatoptions=crqj
augroup END

let g:go_debug_windows = {
          \ 'vars':       'leftabove 30vnew',
          \ 'stack':      'leftabove 20new',
          \ 'out':        'botright 5new',
\ }
" \ 'goroutines': 'botright 10new',
"
let g:go_debug_log_output = 'debugger'

let g:go_debug_mappings = {
     \ '(go-debug-continue)':   {'key': '<F5>'},
     \ '(go-debug-print)':      {'key': '<F6>'},
     \ '(go-debug-breakpoint)': {'key': '<F9>'},
     \ '(go-debug-next)':       {'key': '<F10>'},
     \ '(go-debug-step)':       {'key': '<F11>'},
     \ '(go-debug-halt)':       {'key': '<F8>'},
  \ }

let g:go_debug_breakpoint_sign_text = '●'
