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

" let g:vimwiki_list = [
"       \ {'name': 'main', 'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'},
"       \ {
"         \ 'auto_export': 1,
"         \ 'automatic_nested_syntaxes':1,
"         \ 'path_html': './hugo/content/',
"         \ 'template_path': '$HOME/Code/src/github.com/keyneston/rpg-wiki/templates/',
"         \ 'template_default':'markdown',
"         \ 'template_ext':'.html',
"         \ 'name': 'rpg-wiki',
"         \ 'path': '$HOME/Code/src/github.com/keyneston/rpg-wiki/wiki/', 
"         \ 'syntax': 'markdown',
"         \ 'ext': '.md', 
"         \ 'diary_rel_path': 'posts', 
"         \ 'diary_index': '_index',
"         \ 'diary_header': 'Posts',
"         \ 'custom_wiki2html': '/Users/tabitha/Code/src/github.com/keyneston/rpg-wiki/script/wiki2html.sh'
"         \ },
"       \ ]
"         " "\ 'custom_wiki2html': '$HOME/Code/src/github.com/keyneston/rpg-wiki/scripts/wiki2html.sh',
"         " 'custom_wiki2html': 'CONTENT_ROOT=~/Code/src/github.com/keyneston/rpg-wiki/wiki/ ~/Code/src/github.com/keyneston/rpg-wiki/scripts/wiki2html.sh',
" 
" nnoremap <silent> <Leader>wb :VimwikiGoBackLink<CR>
" let g:vimwiki_conceallevel=0

" let g:wiki_export = {
"     \ 'args' : '',
"     \ 'from_format' : 'markdown',
"     \ 'ext' : 'pdf',
"     \ 'link_ext_replace': v:false,
"     \ 'view' : v:false,
"     \ 'output': fnamemodify(tempname(), ':h'),
"     \}
