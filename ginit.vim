call rpcnotify(1, 'Gui', 'Font', 'Fira Code 13')

"" statusline
"source ~/.config/nvim-gtk/nvimstatus.vim

"" codedark onedark phoenix github   " list of good colorschemes
"" xcodedarkhc molokai               " --
"" ghdark dalton minimalist ayu      " --
"" sunbather dark_plus vadelma       " --
""                                    
colorscheme molokai
""                                      
"" lightline                         "
""
"" materia material codedark         " list of some scheme
"" deus darcula one vadelma      " -
"" OldHope selenized_black mpvadelma " -
""
"" active colorscheme
let g:lightline = { 'colorscheme' : 'materia' }
"
