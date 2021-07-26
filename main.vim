"
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
ab <. «
ab .> »
""  "
""  "                                   
set path+=**                     " add current dir to the path 
set nocp                         " disable vi compatiblities
set number                       " show numbers in the left
set nowrap                       " disable line wraping
"                                " 
filetype plugin on                    " enable finding file type 
set omnifunc=syntaxcomplete#Complete  " omni syntax completion
syntax enable                         " colorful texts
set termguicolors                     " let vim use color in GUI mode
"                                     " 
set wildmenu                     " enable popup menu
set wildmode=longest:list,full   " -
set showcmd                      " show enterd key 
set noshowmode                   " diable showing mode in the old way
"                                " 
"" tab settings                  " 
set tabstop=2                    " tap size in this case is (2)
set expandtab                    " insert spaces instead of tab
set shiftwidth=2                 " 
set softtabstop=2                " 
"                                " 
set autoindent                   " enable line indentaion
"set si                          " smart indent enable
set cindent                      " more 
set showmatch                    " show match brackets, parantesies, etc..
"                                " 
set hlsearch                     " enable search highlighting
"                                " 
set backspace=indent,eol,start   " makes the backspace work functinal
"                                " 
"set clipboard=unnamed           " set clipboard buffer
set clipboard=unnamedplus        " -
"                                " 
set mouse=a                      " enable mouse function 
"                                " 
set nobackup                     " disable auto backup
"                                " 
set scrolloff=5                  " start srolling from 5 lines to the end
"                                " 
set t_Co=256                     " set vim to use 256 colors
set background=dark              " use the dark theme
"                                " 
set cursorline                   " highlight the cursor position
"                                " 
" show qss highlighting like css      
au BufRead,BufNewFile *.qss set filetype=css
"                                     
"" auto comment and uncomment with F6 and F7
autocmd FileType sh,ruby,python,conf,yaml    let b:comment_leader = '#'
autocmd FileType c,cpp,java,scala       let b:comment_leader = '//'
autocmd FileType haskell                let b:comment_leader = '--'
autocmd FileType vim                    let b:comment_leader = '"'
autocmd FileType tex                    let b:comment_leader = '%'
autocmd FileType nroff                  let b:comment_leader = '\"'
"
noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"
" "
" switch to previous tab with F3
noremap <silent> _ :tabprevious<CR> 
"
"""  netrw section
"" functions
" open file in right split via V 
function! OpenToRight()                   
  :normal v
    let g:path=expand('%:p')
    execute 'belowright vnew' g:path
  :normal <C-w><C-w>
    execute 'q'
endfunction
"
" config section
let g:netrw_banner       = 0                  
let g:netrw_liststyle    = 3
let g:netrw_browse_split = 4
let g:netrw_altv         = 1
let g:netrw_winsize      = 80
"
" run netrw at startup
"augroup ProjectDrawer                      
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
"
" keybinding
noremap <buffer> <A-h>  <C-w>h                   
noremap <buffer> <A-l>  <C-w>l
noremap <buffer> <A-C>x :call OpenToRight()<cr>
"
"" code folding               " keybinding ->
set foldmethod=marker         " z-a   toggle
"set foldmethod=manual        " z-c   create
set foldenable                " z-d   delete
set foldnestmax=15            " z-s   save 
set foldlevel=0               " z-z   restore
"
"
""" keybinding
nmap <C-h>  <C-w>h
nmap <C-j>  <C-w>j
nmap <C-k>  <C-w>k
nmap <C-l>  <C-w>l

"" split long single line spart
map Q gq
"" use control-c instead of escape
nnoremap <C-c> <Esc>
"
" <Leader> Key section
let mapleader='\'        " change the <Leader> Key
"set timeoutlen 2         " change timeout lenth 
"
" open all splits in the bottom-h
set splitbelow
set nosplitright
