" Manage plugins with pathogen
call pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background=dark
set background=light
"colorscheme base16-solarized-light
colorscheme solarized
"colorscheme desert
"colorscheme base16-eighties
"colorscheme base16-ocean

if has('gui_running')
  set guifont=Menlo\ Regular:h13
endif

"if has("gui_macvim")
"    set transparency=5
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype plugin indent on
set nu!
set spell
set lbr!
set autoindent
set smartindent
set cursorline
set hid

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
nmap <leader>] :bnext<CR>

" Move to the previous buffer
nmap <leader>[ :bprevious<CR>

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
"let g:airline_powerline_fonts = 1
autocmd vimenter * NERDTree | wincmd p
let NERDTreeShowBookmarks=1
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'php' : 1,
    \}

" javascript-libraries-syntax.vim
let g:used_javascript_libs = 'angularjs,jquery'

"" setup SyntaxComplete for every filetype that does not already have a language specific OMNI script
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
		    \	if &omnifunc == "" |
		    \		setlocal omnifunc=syntaxcomplete#Complete |
		    \	endif
    endif

" Ignore angular directives 
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

"" Tagbar
" Show Tagbar on PHP by default
"autocmd FileType php call SetPHPOptions()
"function! SetPHPOptions()
"    :call tagbar#autoopen(0)
"endfunction

