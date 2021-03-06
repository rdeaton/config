let mapleader = "\<Space>"

set nocompatible
set showmatch
set ignorecase
set mouse=v
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set termguicolors

let g:python3_host_prog = '/home/rdeaton/.pyenv/versions/neovim3/bin/python'

set filetype=off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf' }
Plugin 'junegunn/fzf.vim'
" The tags file has been a pain so far, and not worth the benefits. Disabling
" for now
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'cespare/vim-toml'
Plugin 'scrooloose/nerdcommenter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'zchee/deoplete-jedi'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'

let g:vimwiki_list = [{'path': '~/w/wiki-rdeaton-osaro', 'syntax': 'markdown', 'ext': '.md'},
            \{'path': '~/w/lfg/docs', 'syntax': 'markdown', 'ext': '.md'}]
let g:pandoc#filetypes#handled = ["pandoc","markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#folding#mode = ["syntax"]
let g:vimwiki_folding='expr'


call vundle#end()

colorscheme gruvbox

filetype plugin indent on
set syntax=on
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1

" fzf.vim keyboard shortcuts
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

nnoremap <Leader>k :<C-u>silent! move-2<CR>==
nnoremap <Leader>j :<C-u>silent! move+<CR>==

" Commented out temporarily as I think this is causing weird folding issues
" when switching buffers, but I can't yet explain why
" au BufWinEnter * normal zR

nnoremap <C-p> :Files<CR>
inoremap <C-p> <Esc>:Files<CR>

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

nnoremap <silent> <C-w> :w<CR>:bp<CR>:bd #<CR>

" C-/ is mapped to C-_ for ??!?!
nmap <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle<CR>gv
imap <C-_> <ESC><plug>NERDCommenterToggle<ESC>i

set hidden
