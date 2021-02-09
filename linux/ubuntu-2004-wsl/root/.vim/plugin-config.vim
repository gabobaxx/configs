let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['filename', 'modified']],
      \   'right': [[], ['filetype', 'lineinfo', 'lenght', 'gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'lenght': "%{line('.') . '/' . line('$')}",
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function':{
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'colorscheme': 'wombat',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}
