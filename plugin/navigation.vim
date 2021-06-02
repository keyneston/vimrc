""""""""""""""""""
" CtrlP Settings "
""""""""""""""""""

" nnoremap <leader>p :FZF<CR>
" nnoremap <leader>t :Tags<CR>
" 
" let g:fzf_buffers_jump = 1

" nnoremap <leader>p :CtrlP<CR>
" nnoremap <leader>t :CtrlPTag<CR>
" nnoremap <leader>b :CtrlPBuffer<CR>

" Sort the list top to bottom
let g:ctrlp_match_window_reversed = 0
" Open multiple files into hidden files instead of splits
let g:ctrlp_open_multiple_files = 'ijr'
" Only show files in the current tree for the MRU
let g:ctrlp_mruf_relative = 1
" Disable ctrlp_mru
let g:ctrlp_mruf_exclude = '.*'
" Use the cwd or the nearest .(git|hg|svn) folder as the root
let g:ctrlp_working_path_mode = 'r'
" Override default keybindings to be closer to standard vim.
" i.e. ctrp+p, ctrl+n navigate the list instead of search terms
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
    \ 'PrtSelectMove("j")':   ['<c-n>', '<up>'],
    \ 'PrtHistory(-1)':       ['<c-j>'],
    \ 'PrtHistory(1)':        ['<c-k>'],
    \ 'PrtClearCache()':      ['<c-r>', '<F5>'],
    \ }
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Use git's ls-files if in a .git dir otherwise use rg. In addition use grep
" to ignore any directories or files starting with a '_'
"
" let g:ctrlp_user_command = {
"   \ 'types': {
"     \ 1: ['.git', 'cd %s && git ls-files . -co --exclude-standard | grep -E -v "(^|/)_"'],
"     \ },
"     \ 'fallback': '[ "$PWD" = "$HOME" ] && echo "In HOME Directory" || rg %s --files --color=never --glob ""'
"     \ }
let g:ctrlp_user_command = {
  \   'types': {
  \     1: ['.git', 'cd %s && fscache read -r']
  \   },
  \   'fallback': 'cd %s && fscache read -r'
  \ }

" Control Caching
let g:ctrlp_use_caching = 0

" let output=system('which fswatch')
" if !v:shell_error
"   " need to make sure only one copy is running per thing
" endif

let g:ctrlp_user_command_async=1

"""""""""""
"   FZF   "
"""""""""""

let $FZF_DEFAULT_COMMAND='fscache read -r -f'
let g:fzf_command_prefix = 'Fzf'
nnoremap <leader>p :FzfFiles<CR>
nnoremap <leader>t :FzfTags<CR>
nnoremap <leader>b :FzfBuffer<CR>
nnoremap <leader>r :FzfRg<CR>

let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=* FzfRg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
