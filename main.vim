"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"               
"               
""" abreviations
"" we can set some words as an alias with ab command
"" for e.g here fsf is an alias for 'Free Software Foundation'
"" use Ctrl-v afer abreviation words to don't expand
source ~/.config/nvim/abreviation.vim
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
set wildmode=longest:list,full
"set wildmode=list:full           " -
set showcmd                      " show enterd key 
"set noshowmode                   " diable showing mode in the old way
"                                " 
"" tab settings                  " 
set tabstop=4                    " tap size in this case is (2)
set expandtab                    " insert spaces instead of tab
set shiftwidth=4                 " 
set softtabstop=4                " 
"                                " 
set autoindent                   " enable line indentaion
"set si                          " smart indent enable
set cindent                      " more 
set showmatch                    " show match brackets, parantesies, etc..
"                                " 
set hlsearch                     " enable search highlighting
"                                " 
"set backspace=indent,eol,start  " makes the backspace work functinal
set bs=2                         " makes the backspace work functinal
"                                " 
"set clipboard=unnamed           " set clipboard buffer
set clipboard=unnamedplus        " -
"                                " 
set mouse=a                      " enable mouse function 
"                                " 
"set nobackup                     " disable auto backup
"                                " 
set scrolloff=5                  " start srolling from 5 lines to the end
"                                " 
set t_Co=256                     " set vim to use 256 colors
"                                " 
set cursorline                   " highlight the cursor position
"                                " 
"" show qss highlighting like css      
au BufRead,BufNewFile *.qss set filetype=css
au BufRead,BufNewFile *.vifm set filetype=vim
"au BufRead,BufNewFile *.xml set filetype=html
"                                     
"" auto comment and uncomment with - and +
autocmd FileType sh,ruby,python,conf,yaml,make,*rc    let b:comment_leader = '#'
autocmd FileType c,cpp,java,scala,json  let b:comment_leader = '//'
autocmd FileType haskell,lua            let b:comment_leader = '--'
autocmd FileType vim                    let b:comment_leader = '"'
autocmd FileType tex                    let b:comment_leader = '%'
autocmd FileType nroff                  let b:comment_leader = '\"'
"
"" code folding               " z-c   create
"set foldmethod=manual        " z-a   toggle
set foldmethod=marker         " z-d   delete
set foldenable                "" custom keys ->
set foldnestmax=15            " z-s   save 
set foldlevel=0               " z-z   restore
"
"" open all splits in the bottom-h
set splitbelow
set splitright
""
" "
""""  netrw section
"" config section
let g:netrw_banner       = 0                  
let g:netrw_liststyle    = 3
let g:netrw_browse_split = 4
let g:netrw_alto         = 0
let g:netrw_altv         = 1
let g:netrw_winsize      = 80
let g:netrw_preview      = 1
let g:netrw_keepdir      = 1
"
let g:netrw_cursor       = 4
let g:netrw_fastbrose    = 2
let g:netrw_sort_by      = "exten"
"
"" split char
set fillchars+=vert:\|
"
"" start netrw at start
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * if argc() == 0 | Explore! | endif
"augroup END
"command! -nargs=0 MaybeThisIsTree   :20Lexplore<CR><C-w>w
""
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :20Lexplore<C-w>w
"augroup END
""
"au BufEnter *.c <Leader>ff<CR>
"
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :20Lexplore!
"augroup END
""
set autochdir
