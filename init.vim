""   _  _ ___    
""  | || | __|   H
""  | __ | _|    A
""  |_||_|___|   P
""               
""                                   "
"" main section                      "
""
source ~/.config/nvim/main.vim
set background=dark                  " use the dark theme
""
"" colorscheme                       "
"" 
"" codedark onedark phoenix github   " list of good colorschemes
"" xcodedarkhc molokai               " --
"" ghdark dalton minimalist ayu      " --
"" sunbather dark_plus vadelma       " --
""                                    
colorscheme ayu
""                                      
"" lightline                         "
""
"" materia material codedark         " list of some scheme
"" deus darcula one vadelma      " -
"" OldHope selenized_black mpvadelma " -
""
"" active colorscheme
let g:lightline = { 'colorscheme' : 'material' }
"
"" vim airline 
" colorscheme
"let g:airline_theme='durant'
""
""" skel templates
"" add ready-to-use text by .ext
"source ~/.config/nvim/skeldir/config.skel.vim
source ~/.vim/skels.vim

"" plugins, auto complations
source ~/.config/nvim/ide.vim

"" statusline
"source ~/.config/nvim/nvimstatus.vim

"" compile, debug and run
source ~/.config/nvim/cp.vim

"" keybinds
source ~/.config/nvim/keys.vim
"" 
"autocmd! BufWritePost *note_*.md silent !NoteBuild.sh %:p
"source ~/.config/nvim/Note.vim
"
"" nnn file manager
"source ~/.config/nvim/nnn.vim

"" nerdtree
"source ~/.config/nvim/nerdtree.vim
"
"
if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
endif
"
""
set termbidi
