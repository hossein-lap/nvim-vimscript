"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"                                   "
" main section                      "
" "
source ~/.config/nvim/main.vim      " main configuration file
"
" colorscheme                       "
" "
set termguicolors
"                                    
" codedark xcodedarkhc 256_noir     " list of good colorschemes
" minimalist simple-dark phoenix    " -
"                                   "  
colorscheme sunbather               " active colorscheme
"                                   "  
""" skel templates
"" add ready-to-use text by .ext
source ~/.config/nvim/skels.vim     " 
"                                     
"" status line section
" "
source ~/.config/nvim/statusline_vimrc.vim
"
" compile and run function
source ~/.config/nvim/cp.vim
"
call plug#begin('~/.config/nvim/plugged')
"
  Plug 'vim-scripts/AutoComplPop'       " auto completion plugin
  Plug 'ap/vim-css-color'               " Color previews for CSS
"
call plug#end()
"
set noignorecase
