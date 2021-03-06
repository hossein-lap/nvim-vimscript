"  _  _ ___
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"
"
"" <Leader> key section
let mapleader='\'      " change the <Leader> Key
"
"" comment lines via - and uncomment via + 
noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"
"" switch to previous tab with _ 
noremap <silent> _ :tabprevious<CR> 
"
"" toggle paste mode
noremap <C-P> :set paste!<CR>
"
"" toggle ltr support
noremap <leader>bd   :set termbidi!<CR>
"
"" move into pane
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
"
"" spelling check
noremap <leader>ss  :setlocal spell!<CR>
"map <leader>se  :set spelllang=en_us<CR>
"map <leader>sd  :set spelllang=de_de<CR>
"map <leader>sf  :set spelllang=fr<CR>
"
"" force save exit multi panes
"map <Leader>zz    :xa!<CR>
"
"" force exit multi panes and don't save
"map <Leader>zq    :qa!<CR>
"
"" split long single line apart
noremap Q gqq
"
"" use control-c instead of escape
nnoremap <C-c> <Esc>
"
"" force write to file
cnoremap W w!
"
"" saving read-only files using sudo tee
nmap <leader>ww :w !doas tee % > /dev/null<CR>

"" Completion:
" Spell:
inoremap <C-z> <C-x><C-s>

"" Reload config file
function! ConfReload()
    execute "source $HOME/.config/nvim/init.vim"
    echom "config reloaded"
endfunction

"nmap <leader>re   :call ConfReload()<CR>
