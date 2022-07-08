let g:ale_linters = {
      \ 'markdown': ['vale'],
      \ 'text': ['vale'],
      \ 'go': ['gobuild', 'govet'],
      \ }
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1

if has('gui_running')
  let g:ale_sign_error = '⚠️' 
  let g:ale_sign_warning = '🛑 '
endif
