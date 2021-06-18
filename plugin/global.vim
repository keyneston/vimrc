"""""""""""""""""""""""""""""
" Global Variables/Settings "
"""""""""""""""""""""""""""""

set completeopt=menu,noselect

"let python_highlight_all = 1
let g:miniBufExplMapWindowNavVim=1
let g:ackhighlight=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
" Prevent it from folding anything by default
set foldlevelstart=99

" indent-guide
let g:indent_guides_guide_size=1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', '-MiniBufExplorer-', '.md', '.txt']

" DelimitMate
let delimitMate_expand_cr=2
let delimitMate_excluded_regions = ""
let delimitMate_balance_matchpairs=1

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>""

" vim-markdown
let g:markdown_syntax_conceal = 0

let g:terraform_fmt_on_save=1

let mapleader = ","
let maplocalleader = "\\"
syntax enable
filetype plugin indent on
filetype plugin on

" Bash style tab completion:
set wildmode=longest,list,full
set wildmenu

set spell
set spelllang=en_gb,en_us,nl
set nojoinspaces
set visualbell
set tabstop=4
set smarttab
set autoindent
set hlsearch
set incsearch
set ignorecase smartcase
set backup
set spellfile=~/.vim/dict.add
" set number
set rnu 
set ruler
"set nobackup
set hidden
set splitbelow
let g:miniBufExplSplitBelow=0
set foldmethod=syntax
set showtabline=2

" make the directories needed:
set backupdir=~/.cache/vim/backup/,/tmp
set directory=~/.cache/vim/swp/
set viewdir=~/.cache/vim/view/
call Tabs_create_dir(expand(&backupdir))
call Tabs_create_dir(expand(&directory))
call Tabs_create_dir(expand(&viewdir))


"" Large file handling
" autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif
