": View http://www.vi-improved.org/color_sampler_pack/ for color schemes
" MacVim Settings are in ~/.gvimrc

" From the vim docs:
" > Note that the value of "mapleader" is used at the moment the mapping is
" > defined.  Changing "mapleader" after that has no effect for already defined
" > mappings.
" So we need to set these early.
let mapleader = ","
let maplocalleader = "\\"

"""""""""""
" Plugins "
"""""""""""


call plug#begin('~/.cache/vim-plugins/')

"""""""""""""
" Languages "
"""""""""""""
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'vim-scripts/JSON.vim'
Plug 'juvenn/mustache.vim'
Plug 'racer-rust/vim-racer'
Plug 'tpope/vim-repeat'
Plug 'jparise/vim-graphql'
Plug 'rodjek/vim-puppet'
Plug 'hashivim/vim-terraform'
Plug 'cespare/vim-toml'
Plug 'juliosueiras/vim-terraform-completion'
"Plug 'pedrohdz/vim-yaml-folds'

" Markdown
Plug 'godlygeek/tabular' "Required for vim-markdown
Plug 'plasticboy/vim-markdown'

" Rust
Plug 'rust-lang/rust.vim'

" Python
Plug 'vim-scripts/pyrex.vim'
Plug 'vim-scripts/python.vim--Vasiliev'

""""""""""""
" Features "
""""""""""""
Plug 'mattn/vim-gist'
Plug 'vim-scripts/VisIncr'
Plug 'mileszs/ack.vim'
Plug 'rizzatti/dash.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-go'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-syntastic/syntastic'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'thaerkh/vim-workspace'
Plug 'Raimondi/delimitMate'

" Lightline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'

" Ctags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Snippets
Plug 'sirver/UltiSnips'
"Plug 'honza/vim-snippets'

""""""""""
" Themes "
""""""""""
Plug 'michalbachowski/vim-wombat256mod'
Plug 'tomasr/molokai'
Plug 'tpope/vim-vividchalk'

"""""""""""""
" Libraries "
"""""""""""""
Plug 'roxma/nvim-yarp' " Required for deoplete

"""""""""""""""
" Uninstalled "
"""""""""""""""
" Plug 'Yggdroot/indentLine'
" Plug 'vim-scripts/jQuery'
" Plug 'scrooloose/nerdtree'
" old-bundle/dracula
" Plug 'tpope/vim-rails'
" Plug 'vim-scripts/grails-vim'
" Plug 'vim-scripts/groovy.vim'
" Plug 'jneen/ragel.vim'
" Plug 'mxw/vim-jsx'
" Plug 'vim-scripts/vimwiki'
" Plug 'elixir-lang/vim-elixir'
" Plug 'vim-scripts/minibufexplorerpp'
" Plug 'lyokha/vim-xkbswitch'
" Plug 'junegunn/fzf' ", { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" Need to investigate
Plug 'slashmili/alchemist.vim'
Plug 'tmhedberg/matchit'
Plug 'vim-scripts/scratch.vim'
Plug 'msanders/snipmate.vim'
Plug 'majutsushi/tagbar'
Plug 'tsaleh/vim-align'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ivanov/vim-ipython'
Plug 'pangloss/vim-javascript'
"Plug 'tpope/vim-markdown'
Plug 'uarun/vim-protobuf'
Plug 'airblade/vim-rooter'
Plug 'vim-ruby/vim-ruby'
Plug 'hallison/vim-ruby-sinatra'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-surround'

call plug#end()

""""""""""""
" Pre-Init "
""""""""""""


function! Tabs_create_dir(loc) 
  let s:eloc = expand(a:loc)
  if !isdirectory(s:eloc)
    call mkdir(s:eloc, 'p')
  endif
endfunction


"" Load the Pathogen package manager.
"" There is a bug that causes vim to return 1 instead of 0 if filetype is not
"" on when you attempt to turn it off. It must be off for pathogen to work
"" correctly. So turn it on then turn it off there by ensuring it is off and
"" that vim returns proper status codes.
"filetype on
"filetype off
"
"call pathogen#infect('bundle/{}')
"call pathogen#helptags()

" "" Highlight Extra Whitespace   
" highlight ExtraWhitespace ctermbg=red guibg=red
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=rec
" " Show trailing whitespace and spaces before a tab:
" "autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
" " Show tabs that are not at the start of a line:
" "autocmd BufWinEnter * match ExtraWhitespace /[^\t]\zs\t\+/
" autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

"" MiniBufExplorer
" Don't readjust the height when ^W= is run
" --- a/plugin/minibufexplpp.vim
" +++ b/plugin/minibufexplpp.vim
" @@ -648,6 +648,9 @@ function! <SID>StartExplorer(sticky, delBufNum)
"    " them off for the MBE window
"    setlocal foldcolumn=0
"    setlocal nonumber
" +
" +  setlocal winfixheight
" +  setlocal winfixwidth
" 
"    if has("syntax")
"      syn clear

nnoremap <silent> <Leader>tfr :Tfdoc <C-R><C-W><CR>  
nnoremap <silent> <Leader>tfd :Tfdoc -d <C-R><C-W><CR>  
xnoremap <silent> <Leader>tfr y:Tfdoc <C-R>"<CR>  
xnoremap <silent> <Leader>tfd y:Tfdoc -d <C-R>"<CR>  

""""""""""""""""""""""""""
" Filetypes and Settings "
""""""""""""""""""""""""""

augroup langsettings
  au!
  au BufWritePre * let &bex = '.vimbackup'

  " Set Filetypes
  autocm BufEnter *.mkd,*.md set filetype=markdown
  autocm BufEnter *.hs set filetype=haskell
  "autocm BufEnter *.txt,*.tmp,*.pod set filetype=text
  autocm BufEnter *.json,*.json.tpl set filetype=json
  autocm BufEnter *.yacc set filetype=yacc noexpandtab shiftwidth=4 cindent
  autocm BufEnter *.py set filetype=python
  " syntax=zsh may have errors in parser. If so change syntax=sh
  autocm BufEnter *.zsh,*.zsh.d/*,*.zshrc set filetype=zsh syntax=zsh
  autocm BufEnter *.lua set filetype=lua
  autocm BufEnter *.pp set filetype=puppet
  autocm BufEnter *.rs set filetype=rust
  autocm BufEnter *.html set filetype=html
  autocm BufEnter *.yml,*.yaml set filetype=yaml
  autocm BufEnter *.tf set filetype=terraform

  " Style
  autocm BufEnter *.ml set shiftwidth=2 expandtab softtabstop=2
  autocm BufEnter *.hs set shiftwidth=4 expandtab softtabstop=4 cmdheight=1 
  autocm BufEnter *.c,*.h,*.y,*.l,*.lex,*.cpp set noexpandtab shiftwidth=4 cindent

  " Filetype Settings
  autocm FileType terraform setlocal tabstop=4 shiftwidth=4 textwidth=0 formatoptions=crqj
  autocm FileType json setlocal shiftwidth=2 softtabstop=2 expandtab
  autocm FileType ruby setlocal shiftwidth=2 softtabstop=2 expandtab
  autocm Filetype haskell compiler ghc
  autocm Filetype markdown setlocal spell textwidth=78
  autocm Filetype *.txt setlocal spell nonu textwidth=0
  autocm Filetype yacc setlocal syntax=yacc
  autocm FileType lua setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
  autocm FileType sh setlocal shiftwidth=2 softtabstop=2 expandtab
  autocm FileType zsh setlocal shiftwidth=2 expandtab softtabstop=2
  autocm FileType java setlocal tabstop=8 noexpandtab
  autocm FileType puppet setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
  autocm FileType rust setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
  autocm FileType yaml setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2 foldmethod=indent
  autocm FileType vim setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
  autocm FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
  autocm FileType gitcommit call deoplete#custom#buffer_option('auto_complete', v:false)
  autocm FileType javascript.jsx setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
  autocm FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2


  "" Python
  """ smartindent forces all comments to be left aligned. cindent adds auto 
  """ identing to python+vim
  autocm FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
  autocm FileType python setlocal nosmartindent
  autocm FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
augroup END

""""""""""""""""""""""
"      Vim Wiki      "
""""""""""""""""""""""

let g:vimwiki_list=[{'path': "~/Dropbox/vimwiki", 'syntax': 'markdown', 'ext': '.md'}]

""""""""""""""""""""""
" Functions and Code "
""""""""""""""""""""""

"" Automatically close the omnicomplete 'preview' window after selection.
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave  * if pumvisible() == 0|pclose|endif
command! ClosePreview if pumvisible() == 0|pclose|endif
nnoremap <leader>c :ClosePreview<cr>


com! Sudo %!sudo tee % >> /dev/null

" Taken from http://stackoverflow.com/questions/2974192/how-can-i-pare-down-vims-buffer-list-to-only-include-active-buffers
command! -nargs=* CloseBuffers call CloseHiddenBuffers()
function! CloseHiddenBuffers()
  " figure out which buffers are visible in any tab
  let visible = {}
  for t in range(1, tabpagenr('$'))
    for b in tabpagebuflist(t)
      let visible[b] = 1
    endfor
  endfor
  " close any buffer that are loaded and not visible
  let l:tally = 0
  for b in range(1, bufnr('$'))
    if bufloaded(b) && !has_key(visible, b)
      let l:tally += 1
      exe 'bw ' . b
    endif
  endfor
  echon "Deleted " . l:tally . " buffers"
endfun

"nnoremap = :call ResizeWindows()<cr>
com! ResizeWindows call ResizeWindows()
function! ResizeWindows()
  bufdo 
  "let b:cur_win=winnr()
  "normal 1
  "set winfixheight
  "normal =
  "set nowinfixheight
  "normal b:cur_win
endfun
 
""""""""""""""""""
" Custom Keymaps "
""""""""""""""""""
nnoremap <leader>do :Dash<cr>

noremap <D-e> :NERDTreeToggle<CR>
noremap <D-r> :TagbarToggle<CR>
" Keybinding to quickly clear search
" The 'h' in the middle of the binding causes the cursor to not move forward
" one square.
noremap <leader>/ :noh<CR>

"" Better Copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
"" Better Pasting
nnoremap <F5> :set invpaste paste?<Enter>
inoremap <F5> <C-O><F5>
set pastetoggle=<F5>
