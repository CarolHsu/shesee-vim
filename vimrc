" My currently working version Vimrc
" I kept all other settings in plugins/settings directory
"
" Eddie Kao
" http://blog.eddie.com.tw
" eddie@digik.com.tw

runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#incubate()
filetype plugin indent on
call pathogen#infect('bundle/{}')
call pathogen#helptags()


call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
call plug#end()
" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG
vmap <Enter> <Plug>(EasyAlign)

set cursorline    " enable the horizontal line
set cursorcolumn  " enable the vertical line
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
