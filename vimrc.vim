" Plugin management with vim-plug
call plug#begin('~/.vim/plugged')

" NTree file explorer
Plug 'nvim-tree/nvim-tree.lua'
Plug 'joshdick/onedark.vim'  " One Dark color scheme
Plug 'vim-airline/vim-airline'  " Vim Airline
Plug 'vim-airline/vim-airline-themes'  " Vim Airline Themes

call plug#end()

" General settings

syntax on
syntax enable
filetype on
filetype plugin on

set termguicolors
set guifont=Fira\ Mono:h12
set number
set relativenumber
set laststatus=2  " Enable the status line

" Set One Dark colorscheme
colorscheme onedark

" Configure vim-airline
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1  " Enable powerline fonts

" Enable bold fonts for modes
highlight AirlineMode cterm=bold
highlight AirlineInsert cterm=bold
highlight AirlineVisual cterm=bold

" Functions to get project and current directory
function! GetProjectName()
    return fnamemodify(getcwd(), ':t')
endfunction

function! GetCurrentDir()
    return fnamemodify(getcwd(), ':p:h:t')
endfunction

" Autocommand to call the function on CursorMoved
autocmd CursorMoved * let g:project_name = GetProjectName()
