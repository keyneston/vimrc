" Contains a trailing " " to allow for easier searching.
nnoremap <leader>a :Ack! 

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
