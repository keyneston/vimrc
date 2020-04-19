" Create directory for .swp files
call Tabs_create_dir("~/.vimbackup/swp/")

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()
