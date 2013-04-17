execute pathogen#infect()
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=DarkGrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=Black
let g:CSApprox_loaded=1
set tabstop=3
set shiftwidth=3
set expandtab
set smarttab
set number
set autoindent
"set t_Co=16
set background=dark
colorscheme mySahara
set dir=/home/chris/.vimtmp
filetype on
syntax on
