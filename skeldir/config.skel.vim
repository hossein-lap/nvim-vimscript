"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"               
"                                     "
""" skel templates
"" add ready-to-use text by .ext
"
" scripting
nnoremap ,make :-1read ~/.config/nvim/skeldir/skel.make<CR>Go
nnoremap ,sh   :-1read ~/.config/nvim/skeldir/skel.sh<CR>Go
nnoremap ,py   :-1read ~/.config/nvim/skeldir/skel.py<CR>o

" markup
nnoremap ,html :-1read ~/.config/nvim/skeldir/skel.html<CR>10jo
nnoremap ,md   :-1read ~/.config/nvim/skeldir/skel.md<CR>Go
nnoremap ,ms   :-1read ~/.config/nvim/skeldir/skel.ms<CR>Go
nnoremap ,tex  :-1read ~/.config/nvim/skeldir/skel.tex<CR>:30<CR>i
nnoremap ,ptex  :-1read ~/.config/nvim/skeldir/skel.p.tex<CR>:31<CR>i
"nnoremap ,trep :-1read ~/.config/nvim/skeldir/skel.tex<CR>
"nnoremap ,tlet :-1read ~/.config/nvim/skeldir/skel.tex<CR>

" programming
nnoremap ,cpp  :-1read ~/.config/nvim/skeldir/skel.cpp<CR>10j8wi
nnoremap ,c    :-1read ~/.config/nvim/skeldir/skel.c<CR>9jwo
nnoremap ,hs   :-1read ~/.config/nvim/skeldir/skel.hs<CR>

" template
nnoremap ,intr :-1read ~/.config/nvim/skeldir/skel.intro<CR>Go
nnoremap ,rm   :-1read ~/.config/nvim/skeldir/skel.rm<CR>2jA
nnoremap ,obc  :-1read ~/.config/nvim/skeldir/skel.openbox<CR>3wea

