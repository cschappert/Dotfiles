" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
call plug#end()

source $VIMRUNTIME/defaults.vim
set t_Co=256
set cursorline
colorscheme onehalfdark
set number relativenumber
set timeoutlen=100
imap fd <Esc>
