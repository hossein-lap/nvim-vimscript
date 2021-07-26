"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"               
"" abreviations
" we can set some words as an alias with ab command
" for e.g here fsf is an alias for 'Free Software Foundation'
" use Ctrl-v afer abreviation words to don't expand
ab fsf Free Software Foundation
""  "
""  "                                   
"" tab settings                " 
set tabstop=3                  " tap size in this case is (2)
set expandtab                  " insert spaces instead of tab
set shiftwidth=3               " 
set softtabstop=3              " 
"                              " 
set nocp                       " disable vi compatiblities
set number                     " show numbers in the left
set nowrap                     " disable line wraping
"                              " 
syntax enable                  " colorful texts
"                              " 
set showcmd                    " show enterd key 
"                              " 
set showmatch                  " show match brackets, parantesies, etc..
"                              " 
set hlsearch                   " enable search highlighting
"                              " 
set backspace=indent,eol,start " makes the backspace work functinal
"                              " 
set clipboard=unnamedplus      " bind clipboard and buffer
"                              " 
set mouse=a                    " enable mouse function 
"                              " 
set nobackup                   " disable auto backup
"                              " 
"                              " 
" <Leader> Key section         " 
let mapleader='\'              " change the <Leader> Key
"                              " 
" open all splits in the bottom-h
set splitbelow
"                                
"                              " 
"                              " 
" "
"" show qss highlighting like css      
"au BufRead,BufNewFile *.qss set filetype=css
"                                     
"" auto comment with + and uncomment with -
"autocmd FileType sh,ruby,python,conf    let b:comment_leader = '#'
"autocmd FileType c,cpp,java,scala       let b:comment_leader = '//'
"autocmd FileType haskell                let b:comment_leader = '--'
"autocmd FileType vim                    let b:comment_leader = '"'
"autocmd FileType tex                    let b:comment_leader = '%'
"
"noremap <silent> + :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> - :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"
"                              " 
"                              " 
"
""""  netrw section
""" functions
"" open file in right split via V 
"function! OpenToRight()                   
"  :normal v
"    let g:path=expand('%:p')
"    execute 'belowright vnew' g:path
"  :normal <C-w>l
"    execute 'q'
"endfunction
"
"" config section
"let g:netrw_banner       = 0                  
"let g:netrw_liststyle    = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv         = 1
"let g:netrw_winsize      = 75
"
"" run netrw at startup
"augroup ProjectDrawer                      
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
"
"                              " 
"                              " 
"" keybinding
"noremap <buffer> <A-h>  <C-w>h                   
"noremap <buffer> <A-l>  <C-w>l
"noremap <buffer> <A-C>x :call OpenToRight()<cr>
"
"" netrw section end
"
"                              " 
"                              " 
"
" " other options:
"
"set path+=**                         " add current dir to the path 
"filetype plugin on                   " enable finding file type 
"set omnifunc=syntaxcomplete#Complete " omni syntax completion
"set wildmenu                         " enable popup menu
"set wildmode=longest:list,full       " -
"set noshowmode                       " diable showing mode in the old way
"set autoindent                       " enable line indentaion
"set si                               " smart indent enable
"set cindent                          " more 
"set clipboard=unnamed                " set clipboard buffer
"set scrolloff=5                      " start srolling from 5 lines to the end
"set t_Co=256                         " set vim to use 256 colors
"set background=dark                  " use the dark theme
"set cursorline                       " highlight the cursor position
"set timeoutlen 2                     " change timeout lenth 
" "
"
"" global keybinding
"nmap <C-H>  <C-w>h
"nmap <C-J>  <C-w>j
"nmap <C-K>  <C-w>k
"nmap <C-L>  <C-w>l
"map Q ZQ
"
"                              " 
"                              " 
"
