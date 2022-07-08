""""""""""""""""""""""
"      Vim Wiki      "
""""""""""""""""""""""

let output=system('which gdate')
if !v:shell_error
  let g:wiki_date_exe = 'gdate'
endif

let g:wiki_filetypes = ['wiki', 'md']

let g:wiki_journal = {
    \ 'name': 'journal',
    \ 'frequency': 'daily',
    \ 'date_format': {
    \   'daily' : '%Y-%m-%d',
    \   'weekly' : '%Y_w%V',
    \   'monthly' : '%Y_m%m',
    \ },
    \}

function! WikiRoot()
  let l:local = finddir('wiki', ';./')
  return !empty(l:local) ? l:local : '~/Documents/vimwiki'
endfunction

let g:wiki_root = 'WikiRoot'
let g:wiki_export = {
    \ 'args' : '',
    \ 'from_format' : 'markdown',
    \ 'ext' : 'html',
    \ 'link_ext_replace': v:false,
    \ 'view' : v:false,
    \ 'output': fnamemodify(expand('%'), ':s?wiki?\.\./output?:.:h'),
    \}

let g:wiki_link_extension=".md"
