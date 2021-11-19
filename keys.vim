"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"               
"               
"" auto comment and uncomment with - and +
noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"
"" switch to previous tab with _
noremap <silent> _ :tabprevious<CR> 
"
"" toggle paste mode
nmap <C-P> :set paste!<CR>
"
"" toggle ltr support
nmap <leader>rl   :set termbidi!<CR>
"
"" toggle netrw with \ff
map <Leader>ff  :20Lexplore<CR><C-w><C-w>
"
""" manual folding save and restore keybinding
"" zs to save the folds
"" zr to restore the previous saved folds
autocmd Filetype * nnoremap zs :mkview<CR>    
autocmd Filetype * nnoremap zr :loadview<CR>
"
""" auto complition
"" cancel copmlition
"inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
"" select copmlition
"inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
"" next copmlition
"inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
"" pervious copmlition
"inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
"
"" move between panes (splits) by hjkl
nmap <C-h>  <C-w>h
nmap <C-j>  <C-w>j
nmap <C-k>  <C-w>k
nmap <C-l>  <C-w>l
"
"" split long single line spart
map Q gqq
"
"" save and exit multi pane/tabs 
nnoremap <C-X> :qa!<CR>
nnoremap <C-x> :xa!<CR>
"
"" spelling check
map <leader>se  :setlocal spell! spelllang=en_us<CR>
map <leader>sf  :setlocal spell! spelllang=fr<CR>
"
"" use control-c instead of escape
nnoremap <C-c> <Esc>
"
"" <Leader> Key section
let mapleader='\'        " change the <Leader> Key
"set timeoutlen 2         " change timeout lenth 
"
