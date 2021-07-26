" important option that should already be set!
"set hidden

" available options:
" * g:split_term_style
" * g:split_term_resize_cmd
function! TermWrapper(command) abort
  if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
  if g:split_term_style ==# 'vertical'
    let buffercmd = 'vnew'
  elseif g:split_term_style ==# 'horizontal'
    let buffercmd = 'new'
  else
    echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
    throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
  endif
  if exists('g:split_term_resize_cmd')
    exec g:split_term_resize_cmd
  endif
  exec buffercmd
  exec 'term ' . a:command
  exec 'setlocal nornu nonu'
  exec 'startinsert'
endfunction
"
" " Command dec
command! -nargs=0 Compile       call TermWrapper(printf('make'))
command! -nargs=0 TestAndRun    call TermWrapper(printf('./output'))
command! -nargs=0 CompileAndRun call TermWrapper(printf('make && echo && ./output'))
" "
command! -nargs=0 BuildExecute  call TermWrapper(printf('python %'))
"
" " Keybinding
autocmd FileType c,cpp nnoremap <leader>fq :Compile<CR>
autocmd FileType c,cpp nnoremap <leader>fw :TestAndRun<CR>
autocmd FileType c,cpp nnoremap <leader>fe :CompileAndRun<CR>
" "
autocmd FileType python nnoremap <leader>fb :!xterm -T RunPrompt -e "python % ; read -p 'Press Enter to exit ' dumpvar"<CR>
autocmd FileType nroff,tex nnoremap <leader>fb :!make<CR>
autocmd FileType nroff,tex nnoremap <leader>fe :Compile<CR>
"autocmd FileType python nnoremap <leader>fb :!python %<CR>
"
"" choose between 'vertical' and 'horizontal' 
"" for how the terminal window is split
"" (default is vertical)
let g:split_term_style = 'horizontal'
"
"let g:split_term_resize_cmd = 'resize 40'
"let g:split_term_resize_cmd = ('resize 60')
"
"" manual folding
autocmd Filetype *  nnoremap zs :mkview<CR>
autocmd Filetype *  nnoremap zr :loadview<CR>
