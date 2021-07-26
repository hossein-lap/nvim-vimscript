"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
" "
syntax on
set number
set nowrap
set nocp
set wildmenu
set tabstop=3
set expandtab
set shiftwidth=3
set softtabstop=3
set bs=2
set showcmd
"set cursorline
set showmode
"set scrolloff=4
set encoding=utf-8
set hlsearch
set ls=2
"
set clipboard=unnamedplus
set mouse=a
"
"colorscheme 256_noir   
"colorscheme simple-dark
"
"set backupdir=$HOME/.vim/.backup
"
"""  netrw section
"" functions
" open file in right split via V 
"function! OpenToRight()                   
"  :normal v
"    let g:path=expand('%:p')
"    execute 'belowright vnew' g:path
"    :normal <C-w>l
"    execute 'q'
"endfunction
"
" config section
"let g:netrw_banner = 0                  
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 75
"
" run netrw at startup
"augroup ProjectDrawer                      
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
"
" keybinding
"noremap <buffer> <A-h> <C-w>h                   
"noremap <buffer> <A-l> <C-w>l
"noremap <buffer> <A-C>x :call OpenToRight()<cr>
"
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
"       \ 'n'  : 'NORMAL MODE',
"       \ 'v'  : 'VISUAL MODE',
"       \ 'V'  : 'V·LLINE MODE',
"       \ "\<C-V>" : 'V·BLOCK MODE',
"       \ 'i'  : 'INSERT MODE',
"       \ 'R'  : 'REPLACE MODE',
"       \ 'Rv' : 'V·REPLACE MODE',
"       \ 'c'  : 'COMMAND MODE',
"       \}
"
"
set laststatus=2                      " show status line
set statusline=                       " status line config
set statusline+=%#StatusLine#         " color-scheme
set statusline+=\                     " Separator
set statusline+=%t  				  " full path
set statusline+=\ %m                  " Separator
set statusline+=\ \                   " blank space
set statusline+=%=                    " Switch to the right side
set statusline+=%l\,%c                " Separator
set statusline+=\ \ \ \ \ \           " Separator
set statusline+=\ \ \ \ \ \           " blank space
set statusline+=\                     " blank space
set statusline+=%P                  " Modification 
set statusline+=\                     " Separator
"
