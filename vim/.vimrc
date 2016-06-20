" Source: https://github.com/mavjs/dotfiles

" Initial configs {{{
    filetype off
    set nocompatible
" }}}

" Initialise Pathogen {{{
    call pathogen#infect()
" }}}

" Configs {{{
	filetype plugin indent on
    syntax enable
    set nocompatible    " leave vi-compatibility mode
    set encoding=utf-8  " unicode encoding by default
    set title           " show title in terminal
    set ttyfast
    set noexrc          " enables reading of .vimrc in current dir
    set gdefault        " enables global searching by default
    set linebreak
    set showcmd
    set lisp
    set nostartofline
    set history=1000
    set visualbell
    set backspace=indent,eol,start
    set number
    set showmode
    set mousehide
    set hlsearch
    set autowrite
    set autoread
    set shiftround
    set incsearch
    set showmatch
    set cursorline
    set cursorcolumn
    set ruler
    set laststatus=2 " to show status line
    set colorcolumn=80
    " set shellslash
    set shell=zsh
    set wildignore=*.swp,*.bak,*.pyc,*.class
    set completeopt=menuone,longest,preview
    set pastetoggle=<F10>
    set statusline=%{fugitive#statusline()}\ %t\ %y\ format:\ %{&ff}\ [\%c\,\%l\]\ %P 
    "set nobackup
    "set noswapfile
" }}}
" Environment (GUI/Console) {{{
    syntax enable
    set background=dark
    set t_Co=256
    colorscheme molokai
" }}}
" Tabs, spaces, wrapping {{{
    set expandtab
    set wrap
    set smartindent
    set autoindent
    set tabstop=4
    set shiftwidth=4
	set ci
	set formatoptions=qrn1
	set textwidth=80
	set smarttab
" }}}
" Folding {{{
	set foldmethod=indent
	set foldlevel=99
" }}}

" Keymappings {{{
    " remap : to ;, vice-versa {{{
        nnoremap ; :
        nnoremap : ;
    " }}}
    " clear search with double Return {{{
        nnoremap <CR> :noh<CR><CR>
    " }}}
    " move with Ctrl+<movement key> {{{
        map <c-j> <c-w>j
        map <c-k> <c-w>k
        map <c-l> <c-w>l
        map <c-h> <c-w>h
    " }}}
    " mappings for plugins {{{
        map <leader>td <Plug>TaskList
        nnoremap <leader>g :GundoToggle<CR>
        nnoremap <leader>n :NERDTreeToggle<CR>
        map <leader>j :RopeGotoDefinition<CR>
        map <leader>r :RopeRename<CR>
        map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
        nnoremap <F8> :TagbarToggle<CR>
    " }}}
    " Py.test mappings {{{
        " Execute the tests {{{
            nmap <silent><Leader>tf <Esc>:Pytest file<CR>
            nmap <silent><Leader>tc <Esc>:Pytest class<CR>
            nmap <silent><Leader>tm <Esc>:Pytest method<CR>
        " }}}
        " cycle through test errors {{{
            nmap <silent><Leader>tn <Esc>:Pytest next<CR>
            nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
            nmap <silent><Leader>te <Esc>:Pytest error<CR>
        " }}}
    " }}}
    " Ack.vim mapping {{{
        nmap <leader>a <ESC>:Ack!
    " }}}
" }}}
" Virtualenv Hilighting {{{
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
" }}}
