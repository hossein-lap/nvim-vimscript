"" Disable Dafault Maping:
let g:nnn#set_default_mapping = 0

"" Custom Mapping:
nnoremap <silent> <leader>n :NnnPicker<CR>

"" start nnn in the current file's directory
"nnoremap <leader>n :NnnPicker %:p:h<CR>

"" Layout:
"" Opens the n³ window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.

"" Or pass a dictionary with window size
"let g:nnn#layout = { 'left': '~40%' } " or right, up, down

"" Floating window.
"let g:nnn#layout = { 'window': { 'width': 0.2, 'height': 0.3, 'highlight': 'Debug' } }
"
"" Opening Files In Various Ways:
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'split',
      \ '<c-v>': 'vsplit' }
"
""  Use The Same Nnn Session Within A Vim Session:
let g:nnn#session = 'local'
"
"" Start Nnn In Detail Mode:
let g:nnn#command = 'nnn -UHd'
