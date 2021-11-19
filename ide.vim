"  _  _ ___     
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"               
"
" auto complete for ( , " , ' , [ , { 
"
inoremap      (  ()<Left>
inoremap      "  ""<Left>
inoremap      `  ``<Left>
inoremap      '  ''<Left>
inoremap      [  []<Left>
inoremap      {  {}<Left>
"
" auto-suggest plugin 
"
set complete+=kspell                    " 
set completeopt=menuone,noinsert        " always show popup menu
set shortmess+=c                        " no showing matchs
"
"" airline 
"" tab line enable
"let g:airline#extensions#tabline#enabled = 1
"" encrypt detection
"let g:airline_detect_crypt=1

"let g:airline#extensions#tabline#left_sep = ' » '
"let g:airline#extensions#tabline#right_sep = ' « '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
"" disable air line when lost focus
"let g:airline_focuslost_inactive = 1
"" left and right seperator
"let g:airline_left_sep=' » '
"let g:airline_right_sep=' « '
"" I tin
"let g:airline_detect_whitespace=0
"let g:airline_section_warning=''

" vim-plug
"
call plug#begin('~/.config/nvim/vimplug')

"    Plug 'vim-scripts/AutoComplPop'       " auto completion plugin
    Plug 'ap/vim-css-color'               " Color previews for CSS
    Plug 'itchyny/lightline.vim'          " Lightline statusbar
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"    Plug 'honza/vim-snippets'
"    Plug 'mcchrish/nnn.vim'
    Plug 'vifm/vifm.vim'
"    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()
"
