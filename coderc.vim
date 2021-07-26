"
"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"                                     "
" main section                        "
" "
source ~/.config/nvim/main.vim
"
" colorscheme                         "
" "
" codedark onedark phoenix github     " list of good colorschemes
" xcodedarkhc molokai                 " --
" ghdark dalton minimalist ayu        " --
" sunbather dark_plus vadelma         " --
"                                      
colorscheme ghdark                    " active colorscheme
"                                      
" lightline                           "
" "
" materia material codedark           " list of some scheme
" ayu deus darcula one vadelma        " -
" OldHope selenized_black             " -
"
" active colorscheme
"let g:lightline = {
"     \ 'colorscheme' : 'mpvadelma',
"     \ }
"
""
""" skel templates
"" add ready-to-use text by .ext
source ~/.config/nvim/skels.vim

"" plugins, auto complations
source ~/.config/nvim/ide.vim

"" statusline
source ~/.config/nvim/codestatus.vim

" compile, debug and run
"source ~/.config/nvim/code/compileandrun.vim
source ~/.config/nvim/cp.vim

"" 

