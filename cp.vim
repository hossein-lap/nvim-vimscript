" important option that should already be set!{{{
"set hidden
" available options:
" * g:split_term_style
" * g:split_term_resize_cmd}}}
"
" split term function {{{
function! TermWrapper(command) abort
  if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
  if g:split_term_style ==# 'vertical'
        let buffercmd = '80vnew'
  elseif g:split_term_style ==# 'horizontal'
        let buffercmd = '20new'
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
" }}}
" split size {{{
let g:split_term_resize_cmd = ('resize 50')
" }}}
" choose between vertical(|) and horizontal(-) {{{
"" for how the terminal window is split
"" (default is vertical)
"let g:split_term_style = 'vertical' " |
let g:split_term_style = 'horizontal' " -
"" }}}
"
" Term Section: {{{ 
""  CXCommand:
command! -nargs=0  CPPCompile call TermWrapper(printf('g++ %s', expand('%')))
command! -nargs=0  CCompile   call TermWrapper(printf('gcc %s', expand('%')))
command! -nargs=0  CCRun      call TermWrapper(printf('./a.out'))
"
""  PyConsoleRun:
command! -nargs=0  PyRun      call TermWrapper(printf('python3 %s', expand ('%')))
""  LuaConsoleRun:
command! -nargs=0  LuaRun     call TermWrapper(printf('lua %s', expand ('%')))
"
""  ShellXCommand:
command! -nargs=0  BashRun   call TermWrapper(printf('bash %s', expand('%')))
command! -nargs=0  DashRun   call TermWrapper(printf('dash %s', expand('%')))
command! -nargs=0  TcshRun   call TermWrapper(printf('tcsh %s', expand('%')))
"
""  TEXCompile:
command! -nargs=0  TEXCompile call TermWrapper(printf('xelatex --shell-escape %s', expand('%')))
""  MDCommand:
command! -nargs=0  MDRun       call TermWrapper(printf('mdp %s', expand('%')))
command! -nargs=0  MDCompile   call TermWrapper(printf('pandoc %:r.md -o %:r.pdf', expand('%')))
command! -nargs=0  MDCompileMS call TermWrapper(printf('pandoc %:r.md -t ms -o %:r.ms.pdf', expand('%')))
""  RoffCompile:
command! -nargs=0  GroffPDF  call TermWrapper(printf('groff -Wall -Tpdf -ms %:r.ms > %:r.pdf', expand('%')))
command! -nargs=0  GroffPS   call TermWrapper(printf('groff -Wall -Tps -ms %:r.ms > %:r.ps', expand('%')))
"
""  MakeGlobal:
command! -nargs=0  GlobalCallMake call TermWrapper(printf('make'))
"
""  GitCommand:
command! -nargs=0 GitInit      call TermWrapper(printf('git init'))
command! -nargs=0 GitAdd       call TermWrapper(printf('git add -v .'))
command! -nargs=0 GitCommit    call TermWrapper(printf('git commit'))
command! -nargs=0 GitLogs      call TermWrapper(printf('git log --stat --oneline --all --graph'))
command! -nargs=0 GitStatus    call TermWrapper(printf('git status -s'))
command! -nargs=0 GitDiff      call TermWrapper(printf('git diff'))
command! -nargs=0 GitDiffhead  call TermWrapper(printf('git diff HEAD'))
"
""  Embedded Terminal:
command! -nargs=0 EmbTermBASH  call TermWrapper(printf('bash'))
command! -nargs=0 EmbTermZSH   call TermWrapper(printf('zsh'))
command! -nargs=0 EmbTermCSH   call TermWrapper(printf('tcsh'))
command! -nargs=0 EmbTermSH    call TermWrapper(printf('bash --posix'))
"
"" }}}
" Keybinding: {{{ 
""  CXCommand:
autocmd FileType cpp   nnoremap <leader>fe :CPPCompile<CR>
autocmd FileType c     nnoremap <leader>fe :CCompile<CR>
autocmd FileType c,cpp nnoremap <leader>fw :CCRun<CR>

""  PyConsoleRun:
autocmd FileType python nnoremap <leader>fe   :PyRun<CR>
""  LuaConsoleRun:
autocmd FileType lua    nnoremap <leader>fe   :LuaRun<CR>

""  ShellXCommand:
autocmd FileType sh,zsh,csh,bash nnoremap <leader>fe :BashRun<CR>
autocmd FileType sh,zsh,csh,bash nnoremap <leader>fw :DashRun<CR>
autocmd FileType sh,zsh,csh,bash nnoremap <leader>fq :TcshRun<CR>

""  TEXCompile:
autocmd FileType tex      nnoremap <leader>fe :TEXCompile<CR>
""  MDCommand:
autocmd Filetype markdown nnoremap <leader>fe :MDRun<CR>
autocmd Filetype markdown nnoremap <leader>fw :MDCompile<CR>
autocmd Filetype markdown nnoremap <leader>fq :MDCompileMS<CR>
""  RoffCompile:
autocmd FileType nroff    nnoremap <leader>fe :GroffPDF<CR>
autocmd FileType nroff    nnoremap <leader>fw :GroffPS <CR>

""  MakeGlobal:
autocmd FileType *  nnoremap <leader>cc   :GlobalCallMake<CR>

""  GitCommand:
autocmd FileType *  nnoremap <leader>gi   :GitInit<CR>
autocmd FileType *  nnoremap <leader>ga   :GitAdd<CR>
autocmd FileType *  nnoremap <leader>gc   :GitCommit<CR>
autocmd FileType *  nnoremap <leader>gl   :GitLogs<CR>
autocmd FileType *  nnoremap <leader>gs   :GitStatus<CR>
autocmd FileType *  nnoremap <leader>gdd  :GitDiff<CR>
autocmd FileType *  nnoremap <leader>gdh  :GitDiffhead<CR>

""  Embedded Terminal:
autocmd FileType *  nnoremap <leader>tt   :EmbTermBASH<CR>
autocmd FileType *  nnoremap <leader>tz   :EmbTermZSH<CR>
autocmd FileType *  nnoremap <leader>tc   :EmbTermCSH<CR>
autocmd FileType *  nnoremap <leader>sh   :EmbTermSH<CR>
"" }}}
