vim9script
# This file is set to vim9script so that we can use fancy features such as
# nice comments, and multi-line maps without leading backslashes.


set laststatus=2 # Always show the status line
set noshowmode   # Mode is shown on the statusline.

var split_wc = []

def WordCount(): number
  var currentmode = mode()

  if !exists("g:lastmode_wc")
    g:lastmode_wc = currentmode
  endif

    if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
        g:lastmode_wc = currentmode
        var old_position = getpos('.')
        var old_status = v:statusmsg
        execute "silent normal g\<c-g>"
        if v:statusmsg == "--No lines in buffer--"
            b:wordcount = 0
        else
            split_wc = split(v:statusmsg)
            if index(split_wc, "Selected") < 0
                b:wordcount = str2nr(split_wc[11])
            else
                b:wordcount = str2nr(split_wc[5])
            endif
            v:statusmsg = old_status
        endif
        call setpos('.', old_position)
        return b:wordcount
    else
        return b:wordcount
    endif
enddef
defcompile

g:lightline = {
  'colorscheme': 'wombat',
  'active': {
    'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ],
    'left': [ [ 'mode', 'paste' ],
              [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
  },
  'component_function': {
    'gitbranch': 'FugitiveHead',
    'wordcount': 'WordCount',
  },
}
g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
g:lightline.component_type   = {'buffers': 'tabsel'}
g:lightline#bufferline#filename_modifier = ':t'
