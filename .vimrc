if &compatible
  set nocompatible
endif

if s:MaySet('smarttab')
  set smarttab
endif

if s:MaySet('laststatus')
  set laststatus=2
endif
if s:MaySet('ruler')
  set ruler
endif
if s:MaySet('wildmenu')
  set wildmenu
endif

if s:MaySet('autoread')
  set autoread
endif

if s:MaySet('history')
  set history=1000
endif
if s:MaySet('tabpagemax')
  set tabpagemax=50
endif

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

