" Manage plugins with pathogen
call pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=light
colorscheme solarized
"g:solarized_contrast = "high"
" colorscheme desert

if has('gui_running')
  set guifont=Menlo\ Regular:h12
endif

"if has("gui_macvim")
"    set transparency=7
"endif

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

" Turn off brace matching for cursor legibility
let loaded_matchparen=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ergonomic shortcut for Esc
:imap jk <Esc>
" Toggle NERDTree
:nmap \e :NERDTreeToggle<CR>

" Move to the next buffer
nmap <leader>[ :bnext<CR>

" Move to the previous buffer
nmap <leader>] :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>- :bp <BAR> bd #<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:indent_guides_enable_on_vim_startup = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'php' : 1,
    \}

let g:used_javascript_libs = 'angularjs,jquery'

