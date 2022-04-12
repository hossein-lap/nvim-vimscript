"  _  _ ___     
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"               
" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation
"
" auto complete {{{
let g:AFillOn=0
function! ToggleAutoFill()
    if !g:AFillOn
        call AutoFill()
        echo "AutoFill macro activated."
    else
        call AutoFillOff()
        echo "AutoFill macro deactivated."
    endif
endfunction
"
function! AutoFill()
    let g:AFillOn=1
    inoremap "  ""<Left>
    inoremap `  ``<Left>
    inoremap '  ''<Left>
    inoremap (  ()<Left>
    inoremap [  []<Left>
    inoremap {  {}<Left>
endfunction
"
function! AutoFillOff()
    let g:AFillOn=0
    iu "
    iu `
    iu '
    iu (
    iu [
    iu {
endfunction
"
"nmap <leader>ac :call ToggleAutoFill()<CR>
"imap <leader>ac :call ToggleAutoFill()<CR>
nmap <C-s>a      :call ToggleAutoFill()<CR>
imap <C-s>a <esc>:call ToggleAutoFill()<CR>a
"
au FileType c,cpp,sh,python,lua,markdown,tex,vim,csh,plaintex
      \ call AutoFill()
"
" Markdown complete
function! MDownFill()
"    echo "MDownFill macro activated."
    let g:AFillOn=1
    inoremap *  **<Left>
    inoremap _  __<Left>
endfunction
"
function! MDownFillOff()
"    echo "MDownFill macro deactivated."
    let g:AFillOn=0
    iu *
    iu _
endfunction
"
au FileType markdown call MDownFill()
"au FileType html,xml inoremap <  <><Left>
" }}}
" auto comment and uncomment with - and + {{{
autocmd FileType sh,ruby,python,conf,yaml,make,toml,rmd    let b:comment_leader = '#'
autocmd FileType c,cpp,java,scala,json  let b:comment_leader = '//'
autocmd FileType haskell,lua            let b:comment_leader = '--'
autocmd FileType vim                    let b:comment_leader = '"'
autocmd FileType tex,plaintex           let b:comment_leader = '%'
autocmd FileType nroff                  let b:comment_leader = '\"'
" }}}

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=8

" ensure normal tabs in assembly files
" and set to NASM syntax highlighting
autocmd FileType asm set noexpandtab shiftwidth=8 softtabstop=8 syntax=nasm
"
"" c filetype
augroup cfiletype
    au FileType c set noexpandtab 
    au FileType c set tabstop=8
    au FileType c set softtabstop=8
    au FileType c set shiftwidth=8
augroup END
