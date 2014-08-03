" Manage plugins with pathogen
call pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=light
colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on
set nu!
set spell
set lbr!
set smartindent

" 4 Spaces, not 1 tab
set tabstop=4  
set shiftwidth=4

set expandtab
set laststatus=2

" Highlight search results
set hlsearch 

" Turn off error bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ergonomic shortcut for Esc
:imap jk <Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:airline#extensions#tabline#enabled = 1
