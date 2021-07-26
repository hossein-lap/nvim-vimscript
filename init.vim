""              
"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
""
"
"" abreviation
ab fsf Free Software Foundation
ab het the
"                       
"" vim colorscheme
"colorscheme 256_noir                " b/w and red
"colorscheme codedark                " cool scheme
"colorscheme atlas                   " gray
"colorscheme vulpo                   " good
"colorscheme minimalist              " good
"colorscheme apprentice              " not bad
"colorscheme molokai                 " kinda best
"colorscheme dalton                  " kinda best
"colorscheme gruvbox                 " yeah yeah, same ;)
"colorscheme xcodedarkhc
colorscheme atom-dark               " yeah yeah, same ;)
"
"
"" makes Vim use 256 colors
set t_Co=256
"
"" 
set backupdir=$HOME/.config/nvim/.backup
"
set background=dark
set termguicolors
"
"" status line configs
"
"function! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction
"function! StatuslineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction 
"
"let g:currentmode={
"       \ 'n'  : 'Normal',
"       \ 'v'  : 'Visual',
"       \ 'V'  : 'V·Line',
"   \ "\<C-V>" : 'V·Block',
"       \ 'i'  : 'Insert',
"       \ 'R'  : 'Replace',
"       \ 'Rv' : 'V·Replace',
"       \ 'c'  : 'Command',
"       \}
"
"set laststatus=2                      " show status line
"set statusline=                       " status line config
"set statusline+=%#TabLineSel#         " colorscheme
"set statusline+=\ \                   " blank space
"set statusline+=%{toupper(g:currentmode[mode()])}
"set statusline+=\                     " blank space
"set statusline+=%{StatuslineGit()}
"set statusline+=\                     " blank space
"set statusline+=%#DiffChange#         " colorscheme
"set statusline+=\ \                   " blank space
"set statusline+=%t                     " file name
"set statusline+=\ \                   " blank space
"set statusline+=\                     " blank space
"set statusline+=%r                   " readonly files alert
"set statusline+=%=                    " Switch to the right side
"set statusline+=%Y                       " filetype
"set statusline+=\ \                   " blank space
"set statusline+=%l-%L                 " current line - full lines
"set statusline+=\ \ \                 " blank space
"set statusline+=%{&fileformat}       " show filetype
"set statusline+=\ \                   " blank space
"set statusline+=\[                    " blank space
"set statusline+=%M                    " touch status
"set statusline+=\]                    " blank space
"set statusline+=\ \                   " blank space
"set statusline+=%#TabLineSel#         " colorscheme
"set statusline+=\ \                   " blank space
"set statusline+=%{strftime('%H:%M')}  " show time 
"set statusline+=\ \                 " blank space
"
"
"source ~/.config/nvim/statusline.vim
"
""
set number                        " show line numbers
syntax enable                     " enable syntax highlighting
set cursorline                    " highlight current line
set nowrap                        " disable wraping lines
"set noswapfile
set wildmenu                      " better switching among files
set wildmode=longest:list,full    " wildmenu configuration 
set showcmd
set showmode
"
"" number of lines to keep above and below the cursor
set scrolloff=4
"
function! OpenToRight()
  :normal v
    let g:path=expand('%:p')
    execute 'belowright vnew' g:path
    :normal <C-w>l
    execute 'q'
endfunction

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 75
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

noremap <buffer> <A-h> <C-w>h
noremap <buffer> <A-l> <C-w>l
noremap <buffer> X :call OpenToRight()<cr>
"
"" Create the 'tags' file
"command! MakeTags !ctags -R .
"
"
"" add ready-to-use text by .ext
source ~/.config/nvim/skels.vim
"
"" keybinding
norm Q gq
"
"" tab settings
set tabstop=2               " tap size in this case is (4)
set expandtab               " insert spaces instead of tab
set shiftwidth=2            " 
set softtabstop=2           " 
"
"
"" tab line settings
"set showtabline=1                     " show tabline 
"set tabline+=%#StatusLine#            " Colorscheme
"set tabline+=\                        " blank space
"set tabline+=%#Number#                " Colorscheme
"set tabline+=\                        " blank space
"set tabline+=%#StatusLine#               " Colorscheme
"set tabline+=\                        " blank space
"set tabline+=%t                       " Tab status
"set tabline+=%=                       " Separator
"set tabline+=\                        " blank space
"set tabline+=%#CursorLineNr#          " ColorScheme
"set tabline+=\                        " blank space
"set tabline+=\%r                      " 
"set tabline+=\                        " blank space
"set tabline+=%#CursorLineNr#          " ColorScheme
"set tabline+=\                        " blank space
"set tabline+=%f                       " full path
"set tabline+=\                        " blank space
"set tabline+=%#Question#              " Colorscheme
"set tabline+=\                        " blank space
"set tabline+=%{&fileencoding?&fileencoding:&encoding}     " file encoding
"set tabline+=\[%{&fileformat}\]       " show filetype
"set tabline+=\                        " blank space
"set tabline+=%#Number#                " Colorscheme 
"set tabline+=%Y                       " filetype
"set tabline+=\                        " blank space
"set tabline+=\-                       " Colorscheme
"set tabline+=\                        " blank space
"set tabline+=%999Xx%X                    " blank space
"set tabline+=\                        " blank space
"
"
"" indent section
set autoindent              " turn on automatic indentation
set si                      " smart indent
set cindent                 " enable C style indentation
set showmatch               " show matching brackets
"
"" filetype endocer
set encoding=utf-8          " set character decode to utf-8
"
"" search options
" set ignorecase              " ignore case in search
set hlsearch                " highlighting in search
"
"" backspace 
set bs=2                          " change it if bs is not working
"set backspace=indent,eol,start
"
"" changes LOT of things
set nocp
"
"" clipboard section
set clipboard=unnamed             " set clipboard which enables copy and paste functionality
set clipboard=unnamedplus         " uncomment both if you want a seperate buffer for each file
"
" Mouse Integration
set mouse=a
"
" show qss file ighlighting like css files 
au BufRead,BufNewFile *.qss set filetype=css
"
"  
"" auto comment and uncooment with F6 and F7 key
autocmd FileType c,cpp,java,scala let b:comment_leader = '//'
autocmd FileType sh,ruby,python,conf   let b:comment_leader = '#'
autocmd FileType vim   let b:comment_leader = '"'
"
noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR> " commenting line with F6
noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> " uncommenting line with F7
"
"
noremap <silent> = :tabprevious<CR> " switch to previous tab with F3
"noremap <silent> #4 :tabnext<CR> " switch to next tab with F2
map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
"
"
"" paste mode toggle
set pastetoggle=<F2>            " Paste mode toggle with F2 
                                  " Pastemode disable auto-indent and bracket auto-compelation
                                  " it helps you to paste code fro elsewhere .
"
"" Disabled functions (plugins)  " 
"
"" auto complete for ( , " , ' , [ , { 
inoremap      (  ()<Left>
inoremap      "  ""<Left>
inoremap      `  ``<Left>
inoremap      '  ''<Left>
inoremap      [  []<Left>
inoremap      {  {}<Left>
inoremap      «  «»<Left>
"«
"
"
"" plugins
"autocomplpop setting
"set omnifunc=syntaxcomplete " This is necessary for acp plugin
"let g:acp_behaviorKeywordLength = 1 "  Length of keyword characters before the cursor, which are needed to attempt keyword completion
"
"" airline plugin setting
  " set airline plugin theme
  " let g:airline_theme='monochrome'      " classic
  " let g:airline_theme='lucius'          " b/w
  " let g:airline_theme='hybrid'          " good 
  " let g:airline_theme='one'             " not bad
"
"" toggle showing NERDTree with F9
" map <F9> NERDTreeToggle<CR> 
"
""open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
"" close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
"" Open file in new tab with ctrl + t
" let NERDTreeMapOpenInTab='<c-t>'
"
"" indentLine 
" let g:indentLine_char = '.'
"
"
"
"" vim-plug
  "" Plugins will be downloaded under the specified directory.
" call plug#begin('~/.vim/plugged')
" Plug 'tomasiser/vim-code-dark'
" Plug 'https://github.com/rakr/vim-one.git'
" Plug 'https://github.com/scrooloose/nerdtree.git'
" Plug 'https://github.com/Shougo/vimshell.vim.git'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'https://github.com/skywind3000/asyncrun.vim.git'
"
"" colorschemes
" Plug 'https://github.com/Canop/patine'
" Plug 'https://github.com/owickstrom/vim-colors-paramount'
"
"
"
"" List ends here. Plugins become visible to Vim after this call.
" call plug#end()
"
" 
" autocmd FileType sh  noremap <F5> AsyncRun bash % <CR>  
