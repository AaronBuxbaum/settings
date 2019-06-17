execute pathogen#infect()
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
filetype plugin indent on

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
