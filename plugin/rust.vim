" Stop rust from showing unicode arrows in place of ->, =>, <-, <=
let g:no_rust_conceal=1

let output=system('which rustfmt')
if !v:shell_error
  let g:rustfmt_autosave = 1
endif
