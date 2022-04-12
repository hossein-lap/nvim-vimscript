"  _  _ ___     
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"               
"
" auto-suggest plugin 
"
set complete+=kspell                    " 
set completeopt=menuone,noinsert        " always show popup menu
set shortmess+=c                        " no showing matchs
"
" vim-plug {{{
call plug#begin('~/.config/nvim/vimplug')
	Plug 'ap/vim-css-color'               " Color previews for CSS
	Plug 'neovim/nvim-lspconfig'
"	Plug 'wbthomason/packer.nvim'
"	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"	Plug 'inkarkat/vim-CursorLineCurrentWindow'
call plug#end()
"    Plug 'nvim-lualine/lualine.nvim'
"    " If you want to have icons in your statusline choose one of these
"    Plug 'kyazdani42/nvim-web-devicons'
"    Plug 'kyazdani42/nvim-tree.lua'
"    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"    Plug 'itchyny/lightline.vim'          " Lightline statusbar
"    Plug 'honza/vim-snippets'
" }}}
"
